package com.taobao.top.android.auth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.taobao.top.android.TOPUtils;
import com.taobao.top.android.TopAndroidClient;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public abstract class AuthActivity extends Activity
{
  protected abstract AuthorizeListener getAuthorizeListener();

  protected abstract TopAndroidClient getTopAndroidClient();

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri1 = getIntent().getData();
    final TopAndroidClient localTopAndroidClient = getTopAndroidClient();
    Uri localUri2 = Uri.parse(localTopAndroidClient.getRedirectURI());
    String str1;
    AuthorizeListener localAuthorizeListener;
    String[] arrayOfString1;
    Bundle localBundle;
    int i;
    int j;
    if ((localUri1 != null) && (localUri1.getScheme().equals(localUri2.getScheme())) && (localUri1.getHost().equals(localUri2.getHost())) && (localUri1.getPort() == localUri2.getPort()) && (localUri1.getPath().equals(localUri2.getPath())))
    {
      str1 = localUri1.getQueryParameter("error");
      localAuthorizeListener = getAuthorizeListener();
      if (str1 == null)
      {
        arrayOfString1 = localUri1.getFragment().split("&");
        localBundle = new Bundle();
        i = arrayOfString1.length;
        j = 0;
      }
    }
    else
    {
      while (true)
      {
        AccessToken localAccessToken;
        ArrayList localArrayList;
        ExecutorService localExecutorService;
        if (j >= i)
        {
          localAccessToken = TOPUtils.convertToAccessToken(localBundle);
          Callable local1 = new Callable()
          {
            public Date call()
              throws Exception
            {
              return localTopAndroidClient.getTime();
            }
          };
          localArrayList = new ArrayList();
          localArrayList.add(local1);
          localExecutorService = Executors.newSingleThreadExecutor();
        }
        try
        {
          localAccessToken.setStartDate((Date)((Future)localExecutorService.invokeAll(localArrayList).get(0)).get());
          localTopAndroidClient.addAccessToken(localAccessToken);
          localAuthorizeListener.onComplete(localAccessToken);
          return;
          String[] arrayOfString2 = arrayOfString1[j].split("=");
          if ((arrayOfString2 != null) && (arrayOfString2.length == 2))
            localBundle.putString(arrayOfString2[0], arrayOfString2[1]);
          j++;
        }
        catch (Exception localException)
        {
          while (true)
          {
            AuthException localAuthException = new AuthException(localException);
            localAuthorizeListener.onAuthException(localAuthException);
          }
        }
      }
    }
    String str2 = localUri1.getQueryParameter("error_description");
    AuthError localAuthError = new AuthError();
    localAuthError.setError(str1);
    localAuthError.setErrorDescription(str2);
    localAuthorizeListener.onError(localAuthError);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.AuthActivity
 * JD-Core Version:    0.6.2
 */