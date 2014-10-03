package com.taobao.top.android;

import android.content.Context;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.taobao.top.android.auth.AccessToken;
import com.taobao.top.android.auth.RefreshToken;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public class TOPUtils
{
  public static AccessToken convertToAccessToken(Bundle paramBundle)
  {
    AccessToken localAccessToken = new AccessToken();
    localAccessToken.setValue(paramBundle.getString("access_token"));
    paramBundle.remove("access_token");
    localAccessToken.setExpiresIn(Long.valueOf(paramBundle.getString("expires_in")));
    paramBundle.remove("expires_in");
    localAccessToken.setTokenType(paramBundle.getString("token_type"));
    paramBundle.remove("token_type");
    RefreshToken localRefreshToken = new RefreshToken();
    localRefreshToken.setValue(paramBundle.getString("refresh_token"));
    paramBundle.remove("refresh_token");
    localRefreshToken.setReExpiresIn(Long.valueOf(paramBundle.getString("re_expires_in")));
    paramBundle.remove("re_expires_in");
    localAccessToken.setRefreshToken(localRefreshToken);
    Set localSet = paramBundle.keySet();
    HashMap localHashMap;
    Iterator localIterator;
    if (localSet != null)
    {
      localHashMap = new HashMap();
      localIterator = localSet.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localAccessToken.setAdditionalInformation(localHashMap);
        return localAccessToken;
      }
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.getString(str));
    }
  }

  public static AccessToken convertToAccessToken(JSONObject paramJSONObject)
  {
    AccessToken localAccessToken = new AccessToken();
    localAccessToken.setValue(paramJSONObject.optString("access_token"));
    paramJSONObject.remove("access_token");
    localAccessToken.setExpiresIn(Long.valueOf(paramJSONObject.optLong("expires_in")));
    paramJSONObject.remove("expires_in");
    localAccessToken.setTokenType(paramJSONObject.optString("token_type"));
    paramJSONObject.remove("token_type");
    RefreshToken localRefreshToken = new RefreshToken();
    localRefreshToken.setValue(paramJSONObject.optString("refresh_token"));
    paramJSONObject.remove("refresh_token");
    localRefreshToken.setReExpiresIn(Long.valueOf(paramJSONObject.optLong("re_expires_in")));
    paramJSONObject.remove("re_expires_in");
    localAccessToken.setRefreshToken(localRefreshToken);
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap;
    if (localIterator != null)
      localHashMap = new HashMap();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localAccessToken.setAdditionalInformation(localHashMap);
        return localAccessToken;
      }
      String str = (String)localIterator.next();
      localHashMap.put(str, paramJSONObject.optString(str));
    }
  }

  public static String getDeviceId(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str1 = null;
    if (localTelephonyManager != null)
      str1 = localTelephonyManager.getDeviceId();
    if (str1 != null)
      return "IMEI:" + str1;
    String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if (str2 != null)
      return "ANDROID:" + str2;
    String str3 = Installation.id(paramContext);
    return "UUID:" + str3;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.TOPUtils
 * JD-Core Version:    0.6.2
 */