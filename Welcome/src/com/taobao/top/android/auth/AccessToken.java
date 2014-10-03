package com.taobao.top.android.auth;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;
import java.util.Set;

public class AccessToken
  implements Serializable
{
  public static final String KEY_ACCESS_TOKEN = "access_token";
  public static final String KEY_EXPIRES_IN = "expires_in";
  public static final String KEY_MOBILE_TOKEN = "mobile_token";
  public static final String KEY_R1_EXPIRES_IN = "r1_expires_in";
  public static final String KEY_R2_EXPIRES_IN = "r2_expires_in";
  public static final String KEY_REFRESH_TOKEN = "refresh_token";
  public static final String KEY_RE_EXPIRES_IN = "re_expires_in";
  public static final String KEY_SUB_TAOBAO_USER_ID = "sub_taobao_user_id";
  public static final String KEY_SUB_TAOBAO_USER_NICK = "sub_taobao_user_nick";
  public static final String KEY_TAOBAO_USER_ID = "taobao_user_id";
  public static final String KEY_TAOBAO_USER_NICK = "taobao_user_nick";
  public static final String KEY_TOKEN_TYPE = "token_type";
  public static final String KEY_W1_EXPIRES_IN = "w1_expires_in";
  public static final String KEY_W2_EXPIRES_IN = "w2_expires_in";
  private static final long serialVersionUID = 7322593516469872908L;
  private Map<String, String> additionalInformation;
  private Long expiresIn;
  private RefreshToken refreshToken;
  private Set<String> scope;
  private Date startDate;
  private String tokenType;
  private String value;

  public Map<String, String> getAdditionalInformation()
  {
    return this.additionalInformation;
  }

  public Long getExpiresIn()
  {
    return this.expiresIn;
  }

  public RefreshToken getRefreshToken()
  {
    return this.refreshToken;
  }

  public Set<String> getScope()
  {
    return this.scope;
  }

  public Date getStartDate()
  {
    return this.startDate;
  }

  public String getTokenType()
  {
    return this.tokenType;
  }

  public String getValue()
  {
    return this.value;
  }

  public void setAdditionalInformation(Map<String, String> paramMap)
  {
    this.additionalInformation = paramMap;
  }

  public void setExpiresIn(Long paramLong)
  {
    this.expiresIn = paramLong;
  }

  public void setRefreshToken(RefreshToken paramRefreshToken)
  {
    this.refreshToken = paramRefreshToken;
  }

  public void setScope(Set<String> paramSet)
  {
    this.scope = paramSet;
  }

  public void setStartDate(Date paramDate)
  {
    this.startDate = paramDate;
  }

  public void setTokenType(String paramString)
  {
    this.tokenType = paramString;
  }

  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.auth.AccessToken
 * JD-Core Version:    0.6.2
 */