package com.taobao.top.android.auth;

public class AuthException extends RuntimeException
{
  private static final long serialVersionUID = -6991536303345890311L;

  public AuthException()
  {
  }

  public AuthException(String paramString)
  {
    super(paramString);
  }

  public AuthException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public AuthException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.AuthException
 * JD-Core Version:    0.6.2
 */