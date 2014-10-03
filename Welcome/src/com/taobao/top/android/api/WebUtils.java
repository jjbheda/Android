package com.taobao.top.android.api;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public abstract class WebUtils
{
  public static final String DEFAULT_CHARSET = "UTF-8";
  public static final String METHOD_GET = "GET";
  public static final String METHOD_POST = "POST";
  private static final String USER_AGENT = "TopAndroidSDK";

  private static URL buildGetUrl(String paramString1, String paramString2)
    throws IOException
  {
    URL localURL = new URL(paramString1);
    if (TextUtils.isEmpty(paramString2))
      return localURL;
    String str;
    if (TextUtils.isEmpty(localURL.getQuery()))
      if (paramString1.endsWith("?"))
        str = paramString1 + paramString2;
    while (true)
    {
      return new URL(str);
      str = paramString1 + "?" + paramString2;
      continue;
      if (paramString1.endsWith("&"))
        str = paramString1 + paramString2;
      else
        str = paramString1 + "&" + paramString2;
    }
  }

  public static URL buildGetUrl(String paramString1, Map<String, String> paramMap, String paramString2)
    throws IOException
  {
    return buildGetUrl(paramString1, buildQuery(paramMap, paramString2));
  }

  public static String buildQuery(Map<String, String> paramMap, String paramString)
    throws UnsupportedEncodingException
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
      return null;
    if (TextUtils.isEmpty(paramString))
      paramString = "UTF-8";
    StringBuilder localStringBuilder = new StringBuilder();
    Set localSet = paramMap.entrySet();
    int i = 0;
    Iterator localIterator = localSet.iterator();
    String str1;
    String str2;
    do
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      str1 = (String)localEntry.getKey();
      str2 = (String)localEntry.getValue();
    }
    while ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)));
    if (i != 0)
      localStringBuilder.append("&");
    while (true)
    {
      localStringBuilder.append(str1).append("=").append(URLEncoder.encode(str2, paramString));
      break;
      i = 1;
    }
  }

  public static String decode(String paramString)
  {
    return decode(paramString, "UTF-8");
  }

  public static String decode(String paramString1, String paramString2)
  {
    boolean bool = TextUtils.isEmpty(paramString1);
    Object localObject = null;
    if (!bool);
    try
    {
      String str = URLDecoder.decode(paramString1, paramString2);
      localObject = str;
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public static String doGet(Context paramContext, String paramString, Map<String, String> paramMap)
    throws IOException
  {
    return doGet(paramContext, paramString, paramMap, "UTF-8");
  }

  // ERROR //
  public static String doGet(Context paramContext, String paramString1, Map<String, String> paramMap, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 50	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 133
    //   9: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_3
    //   13: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: astore 6
    //   21: aload_2
    //   22: aload_3
    //   23: invokestatic 69	com/taobao/top/android/api/WebUtils:buildQuery	(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    //   26: astore 7
    //   28: aload_0
    //   29: aload_1
    //   30: aload 7
    //   32: invokestatic 71	com/taobao/top/android/api/WebUtils:buildGetUrl	(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    //   35: ldc 11
    //   37: aload 6
    //   39: invokestatic 137	com/taobao/top/android/api/WebUtils:getConnection	(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   42: astore 9
    //   44: aload 9
    //   46: astore 4
    //   48: aload 4
    //   50: iconst_0
    //   51: invokestatic 141	com/taobao/top/android/api/WebUtils:getResponseAsString	(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    //   54: astore 11
    //   56: aload 4
    //   58: ifnull +8 -> 66
    //   61: aload 4
    //   63: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   66: aload 11
    //   68: areturn
    //   69: astore 8
    //   71: aload 8
    //   73: athrow
    //   74: astore 5
    //   76: aload 4
    //   78: ifnull +8 -> 86
    //   81: aload 4
    //   83: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   86: aload 5
    //   88: athrow
    //   89: astore 10
    //   91: aload 10
    //   93: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   28	44	69	java/io/IOException
    //   3	28	74	finally
    //   28	44	74	finally
    //   48	56	74	finally
    //   71	74	74	finally
    //   91	94	74	finally
    //   48	56	89	java/io/IOException
  }

  // ERROR //
  public static String doPost(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte, Map<String, String> paramMap, int paramInt1, int paramInt2, boolean paramBoolean)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 9
    //   6: aload_0
    //   7: new 27	java/net/URL
    //   10: dup
    //   11: aload_1
    //   12: invokespecial 30	java/net/URL:<init>	(Ljava/lang/String;)V
    //   15: ldc 14
    //   17: aload_2
    //   18: invokestatic 137	com/taobao/top/android/api/WebUtils:getConnection	(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   21: astore 8
    //   23: aconst_null
    //   24: astore 9
    //   26: aload 4
    //   28: ifnull +27 -> 55
    //   31: aload 4
    //   33: invokeinterface 83 1 0
    //   38: invokeinterface 89 1 0
    //   43: astore 12
    //   45: aload 12
    //   47: invokeinterface 94 1 0
    //   52: ifne +62 -> 114
    //   55: aload 8
    //   57: iload 5
    //   59: invokevirtual 152	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   62: aload 8
    //   64: iload 6
    //   66: invokevirtual 155	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   69: aload 8
    //   71: invokevirtual 159	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   74: astore 9
    //   76: aload 9
    //   78: aload_3
    //   79: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   82: aload 8
    //   84: iload 7
    //   86: invokestatic 141	com/taobao/top/android/api/WebUtils:getResponseAsString	(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    //   89: astore 14
    //   91: aload 9
    //   93: ifnull +8 -> 101
    //   96: aload 9
    //   98: invokevirtual 168	java/io/OutputStream:close	()V
    //   101: aload 8
    //   103: ifnull +8 -> 111
    //   106: aload 8
    //   108: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   111: aload 14
    //   113: areturn
    //   114: aload 12
    //   116: invokeinterface 98 1 0
    //   121: checkcast 100	java/util/Map$Entry
    //   124: astore 15
    //   126: aload 8
    //   128: aload 15
    //   130: invokeinterface 103 1 0
    //   135: checkcast 44	java/lang/String
    //   138: aload 15
    //   140: invokeinterface 106 1 0
    //   145: checkcast 44	java/lang/String
    //   148: invokevirtual 172	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: goto -106 -> 45
    //   154: astore 11
    //   156: aload 11
    //   158: athrow
    //   159: astore 10
    //   161: aload 9
    //   163: ifnull +8 -> 171
    //   166: aload 9
    //   168: invokevirtual 168	java/io/OutputStream:close	()V
    //   171: aload 8
    //   173: ifnull +8 -> 181
    //   176: aload 8
    //   178: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   181: aload 10
    //   183: athrow
    //   184: astore 13
    //   186: aload 13
    //   188: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   6	23	154	java/io/IOException
    //   31	45	154	java/io/IOException
    //   45	55	154	java/io/IOException
    //   55	69	154	java/io/IOException
    //   114	151	154	java/io/IOException
    //   6	23	159	finally
    //   31	45	159	finally
    //   45	55	159	finally
    //   55	69	159	finally
    //   69	91	159	finally
    //   114	151	159	finally
    //   156	159	159	finally
    //   186	189	159	finally
    //   69	91	184	java/io/IOException
  }

  public static String doPost(Context paramContext, String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, int paramInt1, int paramInt2, boolean paramBoolean)
    throws IOException
  {
    return doPost(paramContext, paramString, paramMap1, paramMap2, "UTF-8", paramInt1, paramInt2, paramBoolean);
  }

  public static String doPost(Context paramContext, String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
    throws IOException
  {
    String str1 = "application/x-www-form-urlencoded;charset=" + paramString2;
    String str2 = buildQuery(paramMap1, paramString2);
    byte[] arrayOfByte = new byte[0];
    if (str2 != null)
      arrayOfByte = str2.getBytes(paramString2);
    return doPost(paramContext, paramString1, str1, arrayOfByte, paramMap2, paramInt1, paramInt2, paramBoolean);
  }

  public static String doPost(Context paramContext, String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, FileItem> paramMap, int paramInt1, int paramInt2)
    throws IOException
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
      return doPost(paramContext, paramString, paramMap1, paramMap2, "UTF-8", paramInt1, paramInt2, false);
    return doPost(paramContext, paramString, paramMap1, paramMap2, paramMap, "UTF-8", paramInt1, paramInt2);
  }

  // ERROR //
  public static String doPost(Context paramContext, String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, FileItem> paramMap, String paramString2, int paramInt1, int paramInt2)
    throws IOException
  {
    // Byte code:
    //   0: new 50	java/lang/StringBuilder
    //   3: dup
    //   4: invokestatic 192	java/lang/System:currentTimeMillis	()J
    //   7: invokestatic 195	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   10: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   16: astore 8
    //   18: aconst_null
    //   19: astore 9
    //   21: aconst_null
    //   22: astore 10
    //   24: new 50	java/lang/StringBuilder
    //   27: dup
    //   28: ldc 197
    //   30: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   33: aload 5
    //   35: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 199
    //   40: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload 8
    //   45: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: astore 13
    //   53: new 27	java/net/URL
    //   56: dup
    //   57: aload_1
    //   58: invokespecial 30	java/net/URL:<init>	(Ljava/lang/String;)V
    //   61: astore 14
    //   63: aload_0
    //   64: aload 14
    //   66: ldc 14
    //   68: aload 13
    //   70: invokestatic 137	com/taobao/top/android/api/WebUtils:getConnection	(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   73: astore 9
    //   75: aconst_null
    //   76: astore 10
    //   78: aload_3
    //   79: ifnull +26 -> 105
    //   82: aload_3
    //   83: invokeinterface 83 1 0
    //   88: invokeinterface 89 1 0
    //   93: astore 15
    //   95: aload 15
    //   97: invokeinterface 94 1 0
    //   102: ifne +163 -> 265
    //   105: aload 9
    //   107: iload 6
    //   109: invokevirtual 152	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   112: aload 9
    //   114: iload 7
    //   116: invokevirtual 155	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   119: aload 9
    //   121: invokevirtual 159	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   124: astore 10
    //   126: new 50	java/lang/StringBuilder
    //   129: dup
    //   130: ldc 201
    //   132: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: aload 8
    //   137: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc 203
    //   142: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: aload 5
    //   150: invokevirtual 180	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   153: astore 17
    //   155: aload_2
    //   156: invokeinterface 83 1 0
    //   161: invokeinterface 89 1 0
    //   166: astore 18
    //   168: aload 18
    //   170: invokeinterface 94 1 0
    //   175: ifne +160 -> 335
    //   178: aload 4
    //   180: invokeinterface 83 1 0
    //   185: invokeinterface 89 1 0
    //   190: astore 21
    //   192: aload 21
    //   194: invokeinterface 94 1 0
    //   199: ifne +197 -> 396
    //   202: aload 10
    //   204: new 50	java/lang/StringBuilder
    //   207: dup
    //   208: ldc 201
    //   210: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   213: aload 8
    //   215: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc 205
    //   220: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: aload 5
    //   228: invokevirtual 180	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   231: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   234: aload 9
    //   236: iconst_0
    //   237: invokestatic 141	com/taobao/top/android/api/WebUtils:getResponseAsString	(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    //   240: astore 25
    //   242: aload 10
    //   244: ifnull +8 -> 252
    //   247: aload 10
    //   249: invokevirtual 168	java/io/OutputStream:close	()V
    //   252: aload 9
    //   254: ifnull +8 -> 262
    //   257: aload 9
    //   259: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   262: aload 25
    //   264: areturn
    //   265: aload 15
    //   267: invokeinterface 98 1 0
    //   272: checkcast 100	java/util/Map$Entry
    //   275: astore 26
    //   277: aload 9
    //   279: aload 26
    //   281: invokeinterface 103 1 0
    //   286: checkcast 44	java/lang/String
    //   289: aload 26
    //   291: invokeinterface 106 1 0
    //   296: checkcast 44	java/lang/String
    //   299: invokevirtual 172	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   302: goto -207 -> 95
    //   305: astore 12
    //   307: aload 12
    //   309: athrow
    //   310: astore 11
    //   312: aload 10
    //   314: ifnull +8 -> 322
    //   317: aload 10
    //   319: invokevirtual 168	java/io/OutputStream:close	()V
    //   322: aload 9
    //   324: ifnull +8 -> 332
    //   327: aload 9
    //   329: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   332: aload 11
    //   334: athrow
    //   335: aload 18
    //   337: invokeinterface 98 1 0
    //   342: checkcast 100	java/util/Map$Entry
    //   345: astore 19
    //   347: aload 19
    //   349: invokeinterface 103 1 0
    //   354: checkcast 44	java/lang/String
    //   357: aload 19
    //   359: invokeinterface 106 1 0
    //   364: checkcast 44	java/lang/String
    //   367: aload 5
    //   369: invokestatic 209	com/taobao/top/android/api/WebUtils:getTextEntry	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    //   372: astore 20
    //   374: aload 10
    //   376: aload 17
    //   378: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   381: aload 10
    //   383: aload 20
    //   385: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   388: goto -220 -> 168
    //   391: astore 16
    //   393: aload 16
    //   395: athrow
    //   396: aload 21
    //   398: invokeinterface 98 1 0
    //   403: checkcast 100	java/util/Map$Entry
    //   406: astore 22
    //   408: aload 22
    //   410: invokeinterface 106 1 0
    //   415: checkcast 211	com/taobao/top/android/api/FileItem
    //   418: astore 23
    //   420: aload 22
    //   422: invokeinterface 103 1 0
    //   427: checkcast 44	java/lang/String
    //   430: aload 23
    //   432: invokevirtual 214	com/taobao/top/android/api/FileItem:getFileName	()Ljava/lang/String;
    //   435: aload 23
    //   437: invokevirtual 217	com/taobao/top/android/api/FileItem:getMimeType	()Ljava/lang/String;
    //   440: aload 5
    //   442: invokestatic 221	com/taobao/top/android/api/WebUtils:getFileEntry	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    //   445: astore 24
    //   447: aload 10
    //   449: aload 17
    //   451: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   454: aload 10
    //   456: aload 24
    //   458: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   461: aload 10
    //   463: aload 23
    //   465: invokevirtual 225	com/taobao/top/android/api/FileItem:getContent	()[B
    //   468: invokevirtual 165	java/io/OutputStream:write	([B)V
    //   471: goto -279 -> 192
    //
    // Exception table:
    //   from	to	target	type
    //   24	75	305	java/io/IOException
    //   82	95	305	java/io/IOException
    //   95	105	305	java/io/IOException
    //   105	119	305	java/io/IOException
    //   265	302	305	java/io/IOException
    //   24	75	310	finally
    //   82	95	310	finally
    //   95	105	310	finally
    //   105	119	310	finally
    //   119	168	310	finally
    //   168	192	310	finally
    //   192	242	310	finally
    //   265	302	310	finally
    //   307	310	310	finally
    //   335	388	310	finally
    //   393	396	310	finally
    //   396	471	310	finally
    //   119	168	391	java/io/IOException
    //   168	192	391	java/io/IOException
    //   192	242	391	java/io/IOException
    //   335	388	391	java/io/IOException
    //   396	471	391	java/io/IOException
  }

  public static String encode(String paramString)
  {
    return encode(paramString, "UTF-8");
  }

  public static String encode(String paramString1, String paramString2)
  {
    boolean bool = TextUtils.isEmpty(paramString1);
    Object localObject = null;
    if (!bool);
    try
    {
      String str = URLEncoder.encode(paramString1, paramString2);
      localObject = str;
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  private static HttpURLConnection getConnection(Context paramContext, URL paramURL, String paramString1, String paramString2)
    throws IOException
  {
    boolean bool1 = ((WifiManager)paramContext.getSystemService("wifi")).isWifiEnabled();
    Proxy localProxy = null;
    if (!bool1)
    {
      Uri localUri = Uri.parse("content://telephony/carriers/preferapn");
      Cursor localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
      localProxy = null;
      if (localCursor != null)
      {
        boolean bool2 = localCursor.moveToFirst();
        localProxy = null;
        if (bool2)
        {
          String str = localCursor.getString(localCursor.getColumnIndex("proxy"));
          localProxy = null;
          if (str != null)
          {
            int i = str.trim().length();
            localProxy = null;
            if (i > 0)
              localProxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, 80));
          }
          localCursor.close();
        }
      }
    }
    if ("https".equals(paramURL.getProtocol()));
    while (true)
    {
      Object localObject;
      try
      {
        SSLContext localSSLContext = SSLContext.getInstance("TLS");
        KeyManager[] arrayOfKeyManager = new KeyManager[0];
        TrustManager[] arrayOfTrustManager = new TrustManager[1];
        arrayOfTrustManager[0] = new DefaultTrustManager(null);
        localSSLContext.init(arrayOfKeyManager, arrayOfTrustManager, new SecureRandom());
        if (localProxy == null)
        {
          localHttpsURLConnection = (HttpsURLConnection)paramURL.openConnection();
          localHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
          localHttpsURLConnection.setHostnameVerifier(new HostnameVerifier()
          {
            public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
            {
              return true;
            }
          });
          localObject = localHttpsURLConnection;
          ((HttpURLConnection)localObject).setRequestMethod(paramString1);
          ((HttpURLConnection)localObject).setDoInput(true);
          ((HttpURLConnection)localObject).setDoOutput(true);
          ((HttpURLConnection)localObject).setRequestProperty("Accept", "text/xml,text/javascript,text/html");
          ((HttpURLConnection)localObject).setRequestProperty("User-Agent", "TopAndroidSDK");
          ((HttpURLConnection)localObject).setRequestProperty("Content-Type", paramString2);
          ((HttpURLConnection)localObject).setRequestProperty("Accept-Encoding", "gzip");
          return localObject;
        }
      }
      catch (Exception localException)
      {
        throw new IOException(localException.getMessage());
      }
      HttpsURLConnection localHttpsURLConnection = (HttpsURLConnection)paramURL.openConnection(localProxy);
      continue;
      if (localProxy == null)
        localObject = (HttpURLConnection)paramURL.openConnection();
      else
        localObject = (HttpURLConnection)paramURL.openConnection(localProxy);
    }
  }

  private static byte[] getFileEntry(String paramString1, String paramString2, String paramString3, String paramString4)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Content-Disposition:form-data;name=\"");
    localStringBuilder.append(paramString1);
    localStringBuilder.append("\";filename=\"");
    localStringBuilder.append(paramString2);
    localStringBuilder.append("\"\r\nContent-Type:");
    localStringBuilder.append(paramString3);
    localStringBuilder.append("\r\n\r\n");
    return localStringBuilder.toString().getBytes(paramString4);
  }

  protected static String getResponseAsString(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
    throws IOException
  {
    String str1 = getResponseCharset(paramHttpURLConnection.getContentType());
    String str2 = paramHttpURLConnection.getHeaderField("Content-Encoding");
    int i = 0;
    if (str2 != null)
    {
      boolean bool = str2.toLowerCase().contains("gzip");
      i = 0;
      if (bool)
        i = 1;
    }
    Object localObject1 = paramHttpURLConnection.getErrorStream();
    String str3;
    if (localObject1 == null)
    {
      Object localObject2 = paramHttpURLConnection.getInputStream();
      if (i != 0)
        localObject2 = new GZIPInputStream((InputStream)localObject2);
      str3 = getStreamAsString((InputStream)localObject2, str1);
    }
    do
    {
      return str3;
      if (i != 0)
        localObject1 = new GZIPInputStream((InputStream)localObject1);
      str3 = getStreamAsString((InputStream)localObject1, str1);
      if (TextUtils.isEmpty(str3))
        throw new IOException(paramHttpURLConnection.getResponseCode() + ":" + paramHttpURLConnection.getResponseMessage());
    }
    while (paramBoolean);
    throw new IOException(str3);
  }

  private static String getResponseCharset(String paramString)
  {
    String[] arrayOfString1;
    int i;
    if (!TextUtils.isEmpty(paramString))
    {
      arrayOfString1 = paramString.split(";");
      i = arrayOfString1.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i);
      String[] arrayOfString2;
      do
      {
        return "UTF-8";
        String str = arrayOfString1[j].trim();
        if (!str.startsWith("charset"))
          break;
        arrayOfString2 = str.split("=", 2);
      }
      while ((arrayOfString2.length != 2) || (TextUtils.isEmpty(arrayOfString2[1])));
      return arrayOfString2[1].trim();
    }
  }

  private static String getStreamAsString(InputStream paramInputStream, String paramString)
    throws IOException
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream, paramString));
      StringWriter localStringWriter = new StringWriter();
      char[] arrayOfChar = new char[256];
      while (true)
      {
        int i = localBufferedReader.read(arrayOfChar);
        if (i <= 0)
        {
          String str = localStringWriter.toString();
          return str;
        }
        localStringWriter.write(arrayOfChar, 0, i);
      }
    }
    finally
    {
      if (paramInputStream != null)
        paramInputStream.close();
    }
  }

  private static byte[] getTextEntry(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Content-Disposition:form-data;name=\"");
    localStringBuilder.append(paramString1);
    localStringBuilder.append("\"\r\nContent-Type:text/plain\r\n\r\n");
    localStringBuilder.append(paramString2);
    return localStringBuilder.toString().getBytes(paramString3);
  }

  public static Map<String, String> splitUrlQuery(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramString.split("&");
    int i;
    if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
      i = arrayOfString1.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localHashMap;
      String[] arrayOfString2 = arrayOfString1[j].split("=", 2);
      if ((arrayOfString2 != null) && (arrayOfString2.length == 2))
        localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
    }
  }

  private static class DefaultTrustManager
    implements X509TrustManager
  {
    public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
      throws CertificateException
    {
    }

    public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
      throws CertificateException
    {
    }

    public X509Certificate[] getAcceptedIssuers()
    {
      return null;
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.api.WebUtils
 * JD-Core Version:    0.6.2
 */