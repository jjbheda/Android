package com.taobao.top.android.api;

public class ApiError
{
  private String errorCode;
  private String msg;
  private String subCode;
  private String subMsg;

  public String getErrorCode()
  {
    return this.errorCode;
  }

  public String getMsg()
  {
    return this.msg;
  }

  public String getSubCode()
  {
    return this.subCode;
  }

  public String getSubMsg()
  {
    return this.subMsg;
  }

  public void setErrorCode(String paramString)
  {
    this.errorCode = paramString;
  }

  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public void setSubCode(String paramString)
  {
    this.subCode = paramString;
  }

  public void setSubMsg(String paramString)
  {
    this.subMsg = paramString;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("errorCode:").append(this.errorCode).append(" msg:").append(this.msg).append(" subCode:").append(this.subCode).append(" subMsg:").append(this.subMsg);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.api.ApiError
 * JD-Core Version:    0.6.2
 */