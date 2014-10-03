package com.ghost.xianyu.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class MyPreference
{
  public static final String USER_INFO = "user_info";

  public static int getCartNum(Context paramContext)
  {
    return paramContext.getSharedPreferences("user_info", 0).getInt("cartNum", 0);
  }

  public static boolean getIsLogin(Context paramContext)
  {
    return paramContext.getSharedPreferences("user_info", 0).getBoolean("isLogin", false);
  }

  public static String getSessionId(Context paramContext)
  {
    return paramContext.getSharedPreferences("user_info", 0).getString("sessionId", null);
  }

  public static Integer getStepId(Context paramContext)
  {
    return Integer.valueOf(paramContext.getSharedPreferences("user_info", 0).getInt("stepId", 0));
  }

  public static void setCartNum(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("user_info", 0).edit();
    localEditor.putInt("cartNum", paramInt);
    localEditor.commit();
  }

  public static void setIsLogin(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("user_info", 0).edit();
    localEditor.putBoolean("isLogin", paramBoolean);
    localEditor.commit();
  }

  public static void setSessionId(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("user_info", 0).edit();
    localEditor.putString("sessionId", paramString);
    localEditor.commit();
  }

  public static void setStep(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("user_info", 0).edit();
    localEditor.putInt("stepId", paramInt);
    localEditor.commit();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.MyPreference
 * JD-Core Version:    0.6.2
 */