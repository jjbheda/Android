package com.taobao.top.android;

import android.content.Context;

public abstract class JNIUtils
{
  static
  {
    System.loadLibrary("top-sdk");
  }

  public static native String getSDKVersion();

  public static native String getTrackId(Context paramContext, String paramString1, String paramString2);
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.JNIUtils
 * JD-Core Version:    0.6.2
 */