package com.taobao.top.android;

import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.taobao.top.android.api.ApiError;
import com.taobao.top.android.api.TaobaoUtils;
import com.taobao.top.android.api.TopApiListener;
import com.taobao.top.android.api.TopTqlListener;
import com.taobao.top.android.api.WebUtils;
import com.taobao.top.android.auth.AccessToken;
import com.taobao.top.android.auth.AuthError;
import com.taobao.top.android.auth.AuthException;
import com.taobao.top.android.auth.AuthorizeListener;
import com.taobao.top.android.auth.RefreshToken;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class TopAndroidClient
{
  private static final ConcurrentHashMap<String, TopAndroidClient> CLIENT_STORE = new ConcurrentHashMap();
  private static final String LOG_TAG = "TopAndroidClient";
  private static final String OAUTH_CLIENT_ID = "client_id";
  private static final String OAUTH_CLIENT_SECRET = "client_secret";
  private static final String OAUTH_REDIRECT_URI = "redirect_uri";
  private static final String OAUTH_REFRESH_TOKEN = "refresh_token";
  private static final String SDK_CLIENT_SYSNAME = "client-sysName";
  private static final String SDK_CLIENT_SYSVERSION = "client-sysVersion";
  private static final String SDK_DEVICE_UUID = "device-uuid";
  private static final String SDK_TIMESTAMP = "timestamp";
  private static final String SDK_TRACK_ID = "track-id";
  private static final String SDK_VERSION = "sdk-version";
  private static final String SESSION_DIR = "top.session";
  private static final String SYS_NAME = "Android";
  private String appKey;
  private String appSecret;
  private int connectTimeout = 10000;
  private Context context;
  private Env env;
  private int readTimeout = 30000;
  private String redirectURI;
  private ConcurrentHashMap<Long, AccessToken> tokenStore = new ConcurrentHashMap();

  private void doRefresh(AccessToken paramAccessToken, AuthorizeListener paramAuthorizeListener)
  {
    Map localMap = getProtocolParams();
    HashMap localHashMap = new HashMap();
    localHashMap.put("client_id", this.appKey);
    localHashMap.put("client_secret", this.appSecret);
    localHashMap.put("redirect_uri", this.redirectURI);
    localHashMap.put("refresh_token", paramAccessToken.getRefreshToken().getValue());
    try
    {
      String str1 = WebUtils.doPost(this.context, this.env.getRefreshUrl(), localHashMap, localMap, this.connectTimeout, this.readTimeout, true);
      JSONObject localJSONObject = new JSONObject(str1);
      String str2 = localJSONObject.optString("error");
      if (!TextUtils.isEmpty(str2))
      {
        Log.e("TopAndroidClient", str1);
        AuthError localAuthError = new AuthError();
        localAuthError.setError(str2);
        localAuthError.setErrorDescription(localJSONObject.optString("error_description"));
        paramAuthorizeListener.onError(localAuthError);
        return;
      }
      AccessToken localAccessToken = TOPUtils.convertToAccessToken(localJSONObject);
      localAccessToken.setStartDate(getTime());
      addAccessToken(localAccessToken);
      paramAuthorizeListener.onComplete(localAccessToken);
      return;
    }
    catch (Exception localException)
    {
      Log.e("TopAndroidClient", localException.getMessage(), localException);
      paramAuthorizeListener.onAuthException(new AuthException(localException));
    }
  }

  private Map<String, String> generateApiParams(TopParameters paramTopParameters, AccessToken paramAccessToken)
    throws IOException
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("timestamp", String.valueOf(System.currentTimeMillis()));
    localTreeMap.put("v", "2.0");
    localTreeMap.put("app_key", this.appKey);
    localTreeMap.put("partner_id", "top-android-sdk");
    localTreeMap.put("format", "json");
    if (paramAccessToken != null)
      localTreeMap.put("session", paramAccessToken.getValue());
    localTreeMap.put("sign_method", "hmac");
    localTreeMap.put("method", paramTopParameters.getMethod());
    Map localMap = paramTopParameters.getParams();
    Iterator localIterator;
    if (localMap != null)
      localIterator = localMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        List localList = paramTopParameters.getFields();
        if (localList != null)
        {
          String str = TextUtils.join(",", localList);
          if (!TextUtils.isEmpty(str))
            localTreeMap.put("fields", str);
        }
        localTreeMap.put("sign", TaobaoUtils.signTopRequestNew(localTreeMap, this.appSecret));
        return localTreeMap;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localTreeMap.put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  public static TopAndroidClient getAndroidClientByAppKey(String paramString)
  {
    return (TopAndroidClient)CLIENT_STORE.get(paramString);
  }

  private Map<String, String> getProtocolParams()
  {
    String str1 = JNIUtils.getTrackId(this.context, this.appKey, this.appSecret);
    String str2 = str1.substring(0, str1.indexOf("|"));
    String str3 = str1.substring(1 + str1.indexOf("|"));
    HashMap localHashMap = new HashMap();
    localHashMap.put("client-sysName", "Android");
    localHashMap.put("client-sysVersion", Build.VERSION.RELEASE);
    localHashMap.put("device-uuid", TOPUtils.getDeviceId(this.context));
    localHashMap.put("track-id", str2);
    localHashMap.put("timestamp", str3);
    localHashMap.put("sdk-version", JNIUtils.getSDKVersion());
    return localHashMap;
  }

  private AccessToken getStoredAccessToken(Long paramLong)
  {
    AccessToken localAccessToken = null;
    if (paramLong != null)
    {
      localAccessToken = (AccessToken)this.tokenStore.get(paramLong);
      if (localAccessToken == null)
        throw new IllegalArgumentException("userId:" + paramLong + " can't found access token.");
    }
    return localAccessToken;
  }

  private Long getUserIdFromAccessToken(AccessToken paramAccessToken)
  {
    String str1 = (String)paramAccessToken.getAdditionalInformation().get("sub_taobao_user_id");
    if (str1 == null);
    String str2;
    for (Long localLong = null; ; localLong = Long.valueOf(str1))
    {
      if (localLong == null)
      {
        str2 = (String)paramAccessToken.getAdditionalInformation().get("taobao_user_id");
        if (str2 != null)
          break;
        localLong = null;
      }
      return localLong;
    }
    return Long.valueOf(Long.parseLong(str2));
  }

  private void handleApiResponse(TopApiListener paramTopApiListener, String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject(paramString);
    ApiError localApiError = parseError(localJSONObject);
    if (localApiError != null)
    {
      Log.e("TopAndroidClient", paramString);
      paramTopApiListener.onError(localApiError);
      return;
    }
    paramTopApiListener.onComplete(localJSONObject);
  }

  private void invokeApi(TopParameters paramTopParameters, TopApiListener paramTopApiListener, AccessToken paramAccessToken)
  {
    try
    {
      String str = WebUtils.doPost(this.context, this.env.getApiUrl(), generateApiParams(paramTopParameters, paramAccessToken), getProtocolParams(), paramTopParameters.getAttachments(), this.connectTimeout, this.readTimeout);
      Log.d("TopAndroidClient", str);
      handleApiResponse(paramTopApiListener, str);
      return;
    }
    catch (Exception localException)
    {
      Log.e("TopAndroidClient", localException.getMessage(), localException);
      paramTopApiListener.onException(localException);
    }
  }

  private void invokeTql(String paramString, AccessToken paramAccessToken, TopTqlListener paramTopTqlListener)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("ql", paramString);
    localTreeMap.put("app_key", this.appKey);
    localTreeMap.put("sign_method", "hmac");
    localTreeMap.put("top_tql_seperator", "true");
    if (paramAccessToken != null)
      localTreeMap.put("session", paramAccessToken.getValue());
    try
    {
      localTreeMap.put("sign", TaobaoUtils.signTopRequestNew(localTreeMap, this.appSecret));
      String str = WebUtils.doPost(this.context, this.env.getTqlUrl(), localTreeMap, getProtocolParams(), this.connectTimeout, this.readTimeout, false);
      Log.d("TopAndroidClient", str);
      paramTopTqlListener.onComplete(str);
      return;
    }
    catch (Exception localException)
    {
      Log.e("TopAndroidClient", localException.getMessage(), localException);
      paramTopTqlListener.onException(localException);
    }
  }

  private ApiError parseError(JSONObject paramJSONObject)
    throws JSONException
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("error_response");
    if (localJSONObject == null);
    String str1;
    String str2;
    String str3;
    String str4;
    do
    {
      return null;
      str1 = localJSONObject.optString("code");
      str2 = localJSONObject.optString("msg");
      str3 = localJSONObject.optString("sub_code");
      str4 = localJSONObject.optString("sub_msg");
    }
    while ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str3)));
    ApiError localApiError = new ApiError();
    localApiError.setErrorCode(str1);
    localApiError.setMsg(str2);
    localApiError.setSubCode(str3);
    localApiError.setSubMsg(str4);
    return localApiError;
  }

  // ERROR //
  private void persistenceAccessToken(String paramString, AccessToken paramAccessToken)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 160	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +14 -> 18
    //   7: new 358	java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc_w 481
    //   14: invokespecial 376	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_2
    //   19: ifnonnull +14 -> 33
    //   22: new 358	java/lang/IllegalArgumentException
    //   25: dup
    //   26: ldc_w 483
    //   29: invokespecial 376	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   32: athrow
    //   33: new 485	java/io/File
    //   36: dup
    //   37: aload_0
    //   38: getfield 130	com/taobao/top/android/TopAndroidClient:context	Landroid/content/Context;
    //   41: invokevirtual 491	android/content/Context:getFilesDir	()Ljava/io/File;
    //   44: ldc 44
    //   46: invokespecial 494	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   49: astore_3
    //   50: aload_3
    //   51: invokevirtual 497	java/io/File:exists	()Z
    //   54: ifne +8 -> 62
    //   57: aload_3
    //   58: invokevirtual 500	java/io/File:mkdir	()Z
    //   61: pop
    //   62: aload_0
    //   63: aload_2
    //   64: invokespecial 502	com/taobao/top/android/TopAndroidClient:getUserIdFromAccessToken	(Lcom/taobao/top/android/auth/AccessToken;)Ljava/lang/Long;
    //   67: astore 4
    //   69: new 485	java/io/File
    //   72: dup
    //   73: aload_3
    //   74: new 360	java/lang/StringBuilder
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 363	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: ldc_w 504
    //   85: invokevirtual 372	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload 4
    //   90: invokevirtual 367	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 375	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokespecial 494	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   99: astore 5
    //   101: aconst_null
    //   102: astore 6
    //   104: aconst_null
    //   105: astore 7
    //   107: new 506	java/io/FileOutputStream
    //   110: dup
    //   111: aload 5
    //   113: invokespecial 509	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   116: astore 8
    //   118: new 511	java/io/ObjectOutputStream
    //   121: dup
    //   122: aload 8
    //   124: invokespecial 514	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   127: astore 9
    //   129: aload 9
    //   131: aload_2
    //   132: invokevirtual 518	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   135: aload 9
    //   137: invokevirtual 521	java/io/ObjectOutputStream:flush	()V
    //   140: aload 8
    //   142: ifnull +8 -> 150
    //   145: aload 8
    //   147: invokevirtual 524	java/io/FileOutputStream:close	()V
    //   150: aload 9
    //   152: ifnull +8 -> 160
    //   155: aload 9
    //   157: invokevirtual 525	java/io/ObjectOutputStream:close	()V
    //   160: return
    //   161: astore 10
    //   163: aload 6
    //   165: ifnull +8 -> 173
    //   168: aload 6
    //   170: invokevirtual 524	java/io/FileOutputStream:close	()V
    //   173: aload 7
    //   175: ifnull +8 -> 183
    //   178: aload 7
    //   180: invokevirtual 525	java/io/ObjectOutputStream:close	()V
    //   183: aload 10
    //   185: athrow
    //   186: astore 10
    //   188: aload 8
    //   190: astore 6
    //   192: aconst_null
    //   193: astore 7
    //   195: goto -32 -> 163
    //   198: astore 10
    //   200: aload 9
    //   202: astore 7
    //   204: aload 8
    //   206: astore 6
    //   208: goto -45 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   107	118	161	finally
    //   118	129	186	finally
    //   129	140	198	finally
  }

  public static void registerAndroidClient(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    registerAndroidClient(paramContext, paramString1, paramString2, paramString3, Env.PRODUCTION);
  }

  public static void registerAndroidClient(Context paramContext, String paramString1, String paramString2, String paramString3, Env paramEnv)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context must not null.");
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)))
      throw new IllegalArgumentException("appKey,appSecret and redirectURI must not null.");
    TopAndroidClient localTopAndroidClient = new TopAndroidClient();
    localTopAndroidClient.setAppKey(paramString1);
    localTopAndroidClient.setAppSecret(paramString2);
    localTopAndroidClient.setRedirectURI(paramString3);
    localTopAndroidClient.setContext(paramContext);
    if (paramEnv == null)
      paramEnv = Env.PRODUCTION;
    localTopAndroidClient.setEnv(paramEnv);
    localTopAndroidClient.revertAccessToken();
    CLIENT_STORE.put(paramString1, localTopAndroidClient);
  }

  // ERROR //
  private void revertAccessToken()
  {
    // Byte code:
    //   0: new 485	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 130	com/taobao/top/android/TopAndroidClient:context	Landroid/content/Context;
    //   8: invokevirtual 491	android/content/Context:getFilesDir	()Ljava/io/File;
    //   11: ldc 44
    //   13: invokespecial 494	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: astore_1
    //   17: aload_1
    //   18: invokevirtual 497	java/io/File:exists	()Z
    //   21: ifne +4 -> 25
    //   24: return
    //   25: aload_1
    //   26: new 561	com/taobao/top/android/TopAndroidClient$5
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 564	com/taobao/top/android/TopAndroidClient$5:<init>	(Lcom/taobao/top/android/TopAndroidClient;)V
    //   34: invokevirtual 568	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   37: astore_2
    //   38: aload_2
    //   39: ifnull -15 -> 24
    //   42: aload_2
    //   43: arraylength
    //   44: ifle -20 -> 24
    //   47: aload_2
    //   48: arraylength
    //   49: istore_3
    //   50: iconst_0
    //   51: istore 4
    //   53: iload 4
    //   55: iload_3
    //   56: if_icmpge -32 -> 24
    //   59: aload_2
    //   60: iload 4
    //   62: aaload
    //   63: astore 5
    //   65: aconst_null
    //   66: astore 6
    //   68: aconst_null
    //   69: astore 7
    //   71: new 570	java/io/FileInputStream
    //   74: dup
    //   75: aload 5
    //   77: invokespecial 571	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   80: astore 8
    //   82: new 573	java/io/ObjectInputStream
    //   85: dup
    //   86: aload 8
    //   88: invokespecial 576	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   91: astore 9
    //   93: aload 9
    //   95: invokevirtual 579	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   98: checkcast 118	com/taobao/top/android/auth/AccessToken
    //   101: astore 21
    //   103: aload_0
    //   104: aload 21
    //   106: invokespecial 502	com/taobao/top/android/TopAndroidClient:getUserIdFromAccessToken	(Lcom/taobao/top/android/auth/AccessToken;)Ljava/lang/Long;
    //   109: astore 22
    //   111: aload 22
    //   113: ifnull +15 -> 128
    //   116: aload_0
    //   117: getfield 71	com/taobao/top/android/TopAndroidClient:tokenStore	Ljava/util/concurrent/ConcurrentHashMap;
    //   120: aload 22
    //   122: aload 21
    //   124: invokevirtual 559	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   127: pop
    //   128: aload 9
    //   130: ifnull +8 -> 138
    //   133: aload 9
    //   135: invokevirtual 580	java/io/ObjectInputStream:close	()V
    //   138: aload 8
    //   140: ifnull +182 -> 322
    //   143: aload 8
    //   145: invokevirtual 581	java/io/FileInputStream:close	()V
    //   148: iinc 4 1
    //   151: goto -98 -> 53
    //   154: astore 10
    //   156: ldc 11
    //   158: aload 10
    //   160: invokevirtual 207	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   163: aload 10
    //   165: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   168: pop
    //   169: aload 7
    //   171: ifnull +8 -> 179
    //   174: aload 7
    //   176: invokevirtual 580	java/io/ObjectInputStream:close	()V
    //   179: aload 6
    //   181: ifnull -33 -> 148
    //   184: aload 6
    //   186: invokevirtual 581	java/io/FileInputStream:close	()V
    //   189: goto -41 -> 148
    //   192: astore 17
    //   194: ldc 11
    //   196: aload 17
    //   198: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   201: aload 17
    //   203: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   206: pop
    //   207: goto -59 -> 148
    //   210: astore 19
    //   212: ldc 11
    //   214: aload 19
    //   216: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   219: aload 19
    //   221: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   224: pop
    //   225: goto -46 -> 179
    //   228: astore 11
    //   230: aload 7
    //   232: ifnull +8 -> 240
    //   235: aload 7
    //   237: invokevirtual 580	java/io/ObjectInputStream:close	()V
    //   240: aload 6
    //   242: ifnull +8 -> 250
    //   245: aload 6
    //   247: invokevirtual 581	java/io/FileInputStream:close	()V
    //   250: aload 11
    //   252: athrow
    //   253: astore 14
    //   255: ldc 11
    //   257: aload 14
    //   259: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   262: aload 14
    //   264: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   267: pop
    //   268: goto -28 -> 240
    //   271: astore 12
    //   273: ldc 11
    //   275: aload 12
    //   277: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   280: aload 12
    //   282: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   285: pop
    //   286: goto -36 -> 250
    //   289: astore 26
    //   291: ldc 11
    //   293: aload 26
    //   295: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   298: aload 26
    //   300: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   303: pop
    //   304: goto -166 -> 138
    //   307: astore 24
    //   309: ldc 11
    //   311: aload 24
    //   313: invokevirtual 582	java/io/IOException:getMessage	()Ljava/lang/String;
    //   316: aload 24
    //   318: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   321: pop
    //   322: goto -174 -> 148
    //   325: astore 11
    //   327: aload 8
    //   329: astore 6
    //   331: aconst_null
    //   332: astore 7
    //   334: goto -104 -> 230
    //   337: astore 11
    //   339: aload 9
    //   341: astore 7
    //   343: aload 8
    //   345: astore 6
    //   347: goto -117 -> 230
    //   350: astore 10
    //   352: aload 8
    //   354: astore 6
    //   356: aconst_null
    //   357: astore 7
    //   359: goto -203 -> 156
    //   362: astore 10
    //   364: aload 9
    //   366: astore 7
    //   368: aload 8
    //   370: astore 6
    //   372: goto -216 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   71	82	154	java/lang/Exception
    //   184	189	192	java/io/IOException
    //   174	179	210	java/io/IOException
    //   71	82	228	finally
    //   156	169	228	finally
    //   235	240	253	java/io/IOException
    //   245	250	271	java/io/IOException
    //   133	138	289	java/io/IOException
    //   143	148	307	java/io/IOException
    //   82	93	325	finally
    //   93	111	337	finally
    //   116	128	337	finally
    //   82	93	350	java/lang/Exception
    //   93	111	362	java/lang/Exception
    //   116	128	362	java/lang/Exception
  }

  public void addAccessToken(AccessToken paramAccessToken)
    throws IOException
  {
    Long localLong = getUserIdFromAccessToken(paramAccessToken);
    if (localLong == null)
      return;
    this.tokenStore.put(localLong, paramAccessToken);
    persistenceAccessToken(this.appKey, paramAccessToken);
  }

  public void api(final TopParameters paramTopParameters, Long paramLong, final TopApiListener paramTopApiListener, boolean paramBoolean)
  {
    if (paramTopParameters == null)
      throw new IllegalArgumentException("params must not null.");
    if (paramTopApiListener == null)
      throw new IllegalArgumentException("listener must not null.");
    final AccessToken localAccessToken = getStoredAccessToken(paramLong);
    if (paramBoolean)
    {
      new Thread()
      {
        public void run()
        {
          TopAndroidClient.this.invokeApi(paramTopParameters, paramTopApiListener, localAccessToken);
        }
      }
      .start();
      return;
    }
    invokeApi(paramTopParameters, paramTopApiListener, localAccessToken);
  }

  // ERROR //
  public void authorize(android.app.Activity paramActivity)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +14 -> 15
    //   4: new 358	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc_w 603
    //   11: invokespecial 376	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: aload_0
    //   16: invokespecial 103	com/taobao/top/android/TopAndroidClient:getProtocolParams	()Ljava/util/Map;
    //   19: astore_2
    //   20: aload_2
    //   21: ldc 14
    //   23: aload_0
    //   24: getfield 97	com/taobao/top/android/TopAndroidClient:appKey	Ljava/lang/String;
    //   27: invokeinterface 112 3 0
    //   32: pop
    //   33: aload_2
    //   34: ldc 20
    //   36: aload_0
    //   37: getfield 116	com/taobao/top/android/TopAndroidClient:redirectURI	Ljava/lang/String;
    //   40: invokeinterface 112 3 0
    //   45: pop
    //   46: aload_2
    //   47: ldc_w 605
    //   50: new 607	java/util/Random
    //   53: dup
    //   54: invokespecial 608	java/util/Random:<init>	()V
    //   57: invokevirtual 612	java/util/Random:nextInt	()I
    //   60: invokestatic 614	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   63: invokeinterface 112 3 0
    //   68: pop
    //   69: aload_0
    //   70: getfield 132	com/taobao/top/android/TopAndroidClient:env	Lcom/taobao/top/android/TopAndroidClient$Env;
    //   73: invokevirtual 617	com/taobao/top/android/TopAndroidClient$Env:getAuthUrl	()Ljava/lang/String;
    //   76: aload_2
    //   77: aconst_null
    //   78: invokestatic 621	com/taobao/top/android/api/WebUtils:buildGetUrl	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/URL;
    //   81: invokevirtual 624	java/net/URL:toString	()Ljava/lang/String;
    //   84: astore 7
    //   86: new 626	android/content/Intent
    //   89: dup
    //   90: ldc_w 628
    //   93: aload 7
    //   95: invokestatic 634	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   98: invokespecial 637	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   101: astore 8
    //   103: new 639	android/content/ComponentName
    //   106: dup
    //   107: ldc_w 641
    //   110: ldc_w 643
    //   113: invokespecial 646	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: astore 9
    //   118: aload_0
    //   119: getfield 130	com/taobao/top/android/TopAndroidClient:context	Landroid/content/Context;
    //   122: invokevirtual 650	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   125: aload 9
    //   127: bipush 32
    //   129: invokevirtual 656	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   132: pop
    //   133: aload 8
    //   135: aload 9
    //   137: invokevirtual 660	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   140: pop
    //   141: aload_1
    //   142: aload 8
    //   144: invokevirtual 666	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   147: return
    //   148: astore 6
    //   150: new 668	java/lang/RuntimeException
    //   153: dup
    //   154: aload 6
    //   156: invokespecial 669	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   159: athrow
    //   160: astore 10
    //   162: ldc 11
    //   164: aload 10
    //   166: invokevirtual 207	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   169: aload 10
    //   171: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   174: pop
    //   175: goto -34 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   69	86	148	java/io/IOException
    //   103	141	160	java/lang/Exception
  }

  public AccessToken getAccessToken(Long paramLong)
  {
    return (AccessToken)this.tokenStore.get(paramLong);
  }

  public String getAppKey()
  {
    return this.appKey;
  }

  public String getAppSecret()
  {
    return this.appSecret;
  }

  public int getConnectTimeout()
  {
    return this.connectTimeout;
  }

  public Context getContext()
  {
    return this.context;
  }

  public Env getEnv()
  {
    return this.env;
  }

  public int getReadTimeout()
  {
    return this.readTimeout;
  }

  public String getRedirectURI()
  {
    return this.redirectURI;
  }

  public Date getTime()
  {
    TopParameters localTopParameters = new TopParameters();
    localTopParameters.setMethod("taobao.time.get ");
    final ArrayList localArrayList = new ArrayList();
    api(localTopParameters, null, new TopApiListener()
    {
      public void onComplete(JSONObject paramAnonymousJSONObject)
      {
        JSONObject localJSONObject = paramAnonymousJSONObject.optJSONObject("time_get_response");
        String str;
        SimpleDateFormat localSimpleDateFormat;
        if (localJSONObject != null)
        {
          str = localJSONObject.optString("time");
          if (!TextUtils.isEmpty(str))
            localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }
        try
        {
          Date localDate = localSimpleDateFormat.parse(str);
          localArrayList.add(localDate);
          return;
        }
        catch (ParseException localParseException)
        {
          Log.e("TopAndroidClient", localParseException.getMessage(), localParseException);
        }
      }

      public void onError(ApiError paramAnonymousApiError)
      {
      }

      public void onException(Exception paramAnonymousException)
      {
      }
    }
    , false);
    if (localArrayList.size() > 0)
      return (Date)localArrayList.get(0);
    return new Date();
  }

  public ConcurrentHashMap<Long, AccessToken> getTokenStore()
  {
    return this.tokenStore;
  }

  public void refreshToken(Long paramLong, final AuthorizeListener paramAuthorizeListener, boolean paramBoolean)
  {
    if (paramLong == null)
      throw new IllegalArgumentException("userId must not null.");
    if (paramAuthorizeListener == null)
      throw new IllegalArgumentException("listener must not null.");
    final AccessToken localAccessToken = (AccessToken)this.tokenStore.get(paramLong);
    if (localAccessToken == null)
      throw new IllegalArgumentException("userId:" + paramLong + " can't found access token.");
    if (paramBoolean)
    {
      new Thread()
      {
        public void run()
        {
          TopAndroidClient.this.doRefresh(localAccessToken, paramAuthorizeListener);
        }
      }
      .start();
      return;
    }
    doRefresh(localAccessToken, paramAuthorizeListener);
  }

  public void setAppKey(String paramString)
  {
    this.appKey = paramString;
  }

  public void setAppSecret(String paramString)
  {
    this.appSecret = paramString;
  }

  public void setConnectTimeout(int paramInt)
  {
    this.connectTimeout = paramInt;
  }

  public void setContext(Context paramContext)
  {
    this.context = paramContext;
  }

  public void setEnv(Env paramEnv)
  {
    this.env = paramEnv;
  }

  public void setReadTimeout(int paramInt)
  {
    this.readTimeout = paramInt;
  }

  public void setRedirectURI(String paramString)
  {
    this.redirectURI = paramString;
  }

  public void setTokenStore(ConcurrentHashMap<Long, AccessToken> paramConcurrentHashMap)
  {
    this.tokenStore = paramConcurrentHashMap;
  }

  public void tql(final String paramString, Long paramLong, final TopTqlListener paramTopTqlListener, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("ql must not null.");
    if (paramTopTqlListener == null)
      throw new IllegalArgumentException("listener must not null.");
    final AccessToken localAccessToken = getStoredAccessToken(paramLong);
    if (paramBoolean)
    {
      new Thread()
      {
        public void run()
        {
          TopAndroidClient.this.invokeTql(paramString, localAccessToken, paramTopTqlListener);
        }
      }
      .start();
      return;
    }
    invokeTql(paramString, localAccessToken, paramTopTqlListener);
  }

  public static enum Env
  {
    private static final Map<String, String> URL_CONFIG;

    static
    {
      DAILY = new Env("DAILY", 2);
      Env[] arrayOfEnv = new Env[3];
      arrayOfEnv[0] = PRODUCTION;
      arrayOfEnv[1] = SANDBOX;
      arrayOfEnv[2] = DAILY;
      ENUM$VALUES = arrayOfEnv;
      URL_CONFIG = new HashMap();
      URL_CONFIG.put("CONTAINER_URL_PRODUCTION", "https://oauth.taobao.com");
      URL_CONFIG.put("CONTAINER_URL_SANDBOX", "https://oauth.tbsandbox.com");
      URL_CONFIG.put("CONTAINER_URL_DAILY", "https://oauth.daily.taobao.net");
      URL_CONFIG.put("TOP_URL_PRODUCTION", "http://gw.api.taobao.com");
      URL_CONFIG.put("TOP_URL_SANDBOX", "http://gw.api.tbsandbox.com");
      URL_CONFIG.put("TOP_URL_DAILY", "http://10.232.127.144");
    }

    private String getConfigedValue(String paramString)
    {
      String str = paramString + toString();
      return (String)URL_CONFIG.get(str);
    }

    public String getApiUrl()
    {
      return getConfigedValue("TOP_URL_") + "/router/rest";
    }

    public String getAuthUrl()
    {
      return getConfigedValue("CONTAINER_URL_") + "/authorize?response_type=token&view=wap";
    }

    public String getRefreshUrl()
    {
      return getConfigedValue("CONTAINER_URL_") + "/token?grant_type=refresh_token";
    }

    public String getTqlUrl()
    {
      return getConfigedValue("TOP_URL_") + "/tql/2.0/json";
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.TopAndroidClient
 * JD-Core Version:    0.6.2
 */