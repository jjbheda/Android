package com.ghost.xianyu.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidityCheck
{
  public static boolean isEmailAddress(String paramString)
  {
    return Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*").matcher(paramString).find();
  }

  public static boolean isMobileNO(String paramString)
  {
    if (paramString == null)
      return false;
    return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$").matcher(paramString).matches();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.ValidityCheck
 * JD-Core Version:    0.6.2
 */