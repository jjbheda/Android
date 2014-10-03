package com.ghost.xianyu.internet;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class NetworkConnection
{
  public static boolean isConnected(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    NetworkInfo.State localState1 = localConnectivityManager.getNetworkInfo(0).getState();
    NetworkInfo.State localState2 = localConnectivityManager.getNetworkInfo(1).getState();
    boolean bool;
    if ((localState2 == NetworkInfo.State.CONNECTED) || (localState2 == NetworkInfo.State.CONNECTING))
      bool = true;
    NetworkInfo.State localState3;
    do
    {
      return bool;
      if (localState1 == NetworkInfo.State.CONNECTED)
        break;
      localState3 = NetworkInfo.State.CONNECTING;
      bool = false;
    }
    while (localState1 != localState3);
    return true;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.internet.NetworkConnection
 * JD-Core Version:    0.6.2
 */