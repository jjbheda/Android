package com.ghost.xianyu.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.widget.Toast;
import com.ghost.xianyu.Home;
import com.ghost.xianyu.internet.HttpConnection;

public class NetworkReceiver extends BroadcastReceiver
{
  public static boolean isConnection;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo() == null)
    {
      isConnection = false;
      Toast.makeText(paramContext, "网络连接不可用", 1).show();
    }
    do
    {
      return;
      isConnection = true;
    }
    while (HttpConnection.php_sessid == null);
    HttpConnection.post_login(Home.phoneNum, Home.password);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.NetworkReceiver
 * JD-Core Version:    0.6.2
 */