package com.taobao.top.android.auth;

public abstract interface AuthorizeListener
{
  public abstract void onAuthException(AuthException paramAuthException);

  public abstract void onComplete(AccessToken paramAccessToken);

  public abstract void onError(AuthError paramAuthError);
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.AuthorizeListener
 * JD-Core Version:    0.6.2
 */