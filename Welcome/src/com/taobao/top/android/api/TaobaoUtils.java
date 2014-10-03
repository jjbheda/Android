package com.taobao.top.android.api;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public abstract class TaobaoUtils
{
  private static String byte2hex(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1)
        localStringBuilder.append("0");
      localStringBuilder.append(str.toUpperCase());
    }
  }

  private static byte[] encryptHMAC(String paramString1, String paramString2)
    throws IOException
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacMD5");
      Mac localMac = Mac.getInstance(localSecretKeySpec.getAlgorithm());
      localMac.init(localSecretKeySpec);
      byte[] arrayOfByte = localMac.doFinal(paramString1.getBytes("UTF-8"));
      return arrayOfByte;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new IOException(getStringFromException(localGeneralSecurityException));
    }
  }

  public static String getFileSuffix(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 10))
      return null;
    if ((paramArrayOfByte[0] == 71) && (paramArrayOfByte[1] == 73) && (paramArrayOfByte[2] == 70))
      return "GIF";
    if ((paramArrayOfByte[1] == 80) && (paramArrayOfByte[2] == 78) && (paramArrayOfByte[3] == 71))
      return "PNG";
    if ((paramArrayOfByte[6] == 74) && (paramArrayOfByte[7] == 70) && (paramArrayOfByte[8] == 73) && (paramArrayOfByte[9] == 70))
      return "JPG";
    if ((paramArrayOfByte[0] == 66) && (paramArrayOfByte[1] == 77))
      return "BMP";
    return null;
  }

  public static String getMimeType(byte[] paramArrayOfByte)
  {
    String str = getFileSuffix(paramArrayOfByte);
    if ("JPG".equals(str))
      return "image/jpeg";
    if ("GIF".equals(str))
      return "image/gif";
    if ("PNG".equals(str))
      return "image/png";
    if ("BMP".equals(str))
      return "image/bmp";
    return "application/octet-stream";
  }

  private static String getStringFromException(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramThrowable.printStackTrace(new PrintStream(localByteArrayOutputStream));
    try
    {
      String str = localByteArrayOutputStream.toString("UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return "";
  }

  public static String signTopRequestNew(TreeMap<String, String> paramTreeMap, String paramString)
    throws IOException
  {
    Set localSet = paramTreeMap.entrySet();
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localSet.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return byte2hex(encryptHMAC(localStringBuilder.toString(), paramString));
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((!TextUtils.isEmpty((CharSequence)localEntry.getKey())) && (!TextUtils.isEmpty((CharSequence)localEntry.getValue())))
        localStringBuilder.append((String)localEntry.getKey()).append((String)localEntry.getValue());
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.api.TaobaoUtils
 * JD-Core Version:    0.6.2
 */