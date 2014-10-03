package com.ghost.xianyu;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Window;
import android.widget.RelativeLayout;
import com.ghost.xianyu.util.ImageProcessor;

public class Welcome extends Activity
{
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (!Welcome.this.isFirst)
        if (!Welcome.this.pref.getBoolean("isLogin", false))
          Welcome.this.startActivity(new Intent(Welcome.this, Login.class));
      while (true)
      {
        Welcome.this.finish();
//        return;
        Welcome.this.startActivity(new Intent(Welcome.this, Home.class));
//        continue;
        SharedPreferences.Editor localEditor = Welcome.this.pref.edit();
        localEditor.putBoolean("isFirst", false);
        localEditor.commit();
        Welcome.this.startActivity(new Intent(Welcome.this, GuidePage.class));
      }
    }
  };
  boolean isFirst;
  SharedPreferences pref;
  RelativeLayout welcomeLayout;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    setContentView(2130903049);
    this.welcomeLayout = ((RelativeLayout)findViewById(2131296371));
    ImageProcessor localImageProcessor = new ImageProcessor(getResources().openRawResource(2130837556));
    this.welcomeLayout.setBackgroundDrawable(localImageProcessor.processToDrawable());
    this.pref = getSharedPreferences("user_info", 0);
    this.isFirst = this.pref.getBoolean("isFirst", true);
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          Thread.sleep(2000L);
          Welcome.this.handler.sendEmptyMessage(0);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
    }).start();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.Welcome
 * JD-Core Version:    0.6.2
 */