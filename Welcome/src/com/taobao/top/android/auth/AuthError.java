package com.taobao.top.android.auth;

public class AuthError
{
  private String error;
  private String error_description;

  public String getError()
  {
    return this.error;
  }

  public String getErrorDescription()
  {
    return this.error_description;
  }

  public void setError(String paramString)
  {
    this.error = paramString;
  }

  public void setErrorDescription(String paramString)
  {
    this.error_description = paramString;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.AuthError
 * JD-Core Version:    0.6.2
 */