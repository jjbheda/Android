package com.taobao.top.android.auth;

import java.io.Serializable;

public class RefreshToken
  implements Serializable
{
  private static final long serialVersionUID = -8401737099387908054L;
  private Long reExpiresIn;
  private String value;

  public Long getReExpiresIn()
  {
    return this.reExpiresIn;
  }

  public String getValue()
  {
    return this.value;
  }

  public void setReExpiresIn(Long paramLong)
  {
    this.reExpiresIn = paramLong;
  }

  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.RefreshToken
 * JD-Core Version:    0.6.2
 */