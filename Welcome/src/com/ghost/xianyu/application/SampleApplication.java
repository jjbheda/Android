package com.ghost.xianyu.application;

import android.app.Application;
import com.taobao.top.android.TopAndroidClient;

public class SampleApplication extends Application
{
  public void onCreate()
  {
    super.onCreate();
    TopAndroidClient.registerAndroidClient(getApplicationContext(), "21509472", "2f4fe3d7a7453d2ea9941e670d094407", "callback://authresult");
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.application.SampleApplication
 * JD-Core Version:    0.6.2
 */