package com.ghost.xianyu.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.WeakHashMap;

public class NetImageCache extends WeakHashMap<String, Bitmap>
{
  private static final String CACHE_FILE = "/XianYu/cache";
  private static NetImageCache mNetImageCache = new NetImageCache();

  private boolean cacheBmpToMemory(File paramFile, String paramString)
  {
    boolean bool = true;
    try
    {
      FileInputStream localFileInputStream1 = new FileInputStream(paramFile);
      localFileInputStream2 = localFileInputStream1;
      byte[] arrayOfByte = getBytesFromStream(localFileInputStream2);
      localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
      if (localBitmap == null)
        return false;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Bitmap localBitmap;
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        FileInputStream localFileInputStream2 = null;
        bool = false;
      }
      put(paramString, localBitmap, false);
    }
    return bool;
  }

  private String changeUrlToName(String paramString)
  {
    return paramString.replaceAll(":", "_").replaceAll("//", "_").replaceAll("/", "_").replaceAll("=", "_").replaceAll(",", "_").replaceAll("&", "_");
  }

  private byte[] getBytesFromStream(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    int i = 0;
    while (true)
    {
      if ((i != -1) || (paramInputStream != null));
      try
      {
        paramInputStream.close();
        return localByteArrayOutputStream.toByteArray();
        try
        {
          int j = paramInputStream.read(arrayOfByte);
          i = j;
          if (i == -1)
            continue;
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
        }
        catch (IOException localIOException1)
        {
          while (true)
            localIOException1.printStackTrace();
        }
      }
      catch (IOException localIOException2)
      {
        while (true)
          localIOException2.printStackTrace();
      }
    }
  }

  public static NetImageCache getInstance()
  {
    return mNetImageCache;
  }

  private String isCacheFileIsExit()
  {
    String str1 = "";
    if (Environment.getExternalStorageState().equals("mounted"))
      str1 = Environment.getExternalStorageDirectory().toString();
    String str2 = str1 + "/XianYu/cache";
    File localFile = new File(str2);
    if (!localFile.exists())
    {
      new File(str1 + "/XianYu").mkdirs();
      localFile.mkdirs();
    }
    return str2;
  }

  private boolean isLocalHasBmp(String paramString)
  {
    String str = changeUrlToName(paramString);
    File localFile = new File(isCacheFileIsExit(), str);
    if (localFile.exists())
      return cacheBmpToMemory(localFile, paramString);
    return false;
  }

  public boolean isBitmapExit(String paramString)
  {
    boolean bool = containsKey(paramString);
    if (!bool)
      bool = isLocalHasBmp(paramString);
    return bool;
  }

  public Bitmap put(String paramString, Bitmap paramBitmap)
  {
    File localFile = new File(isCacheFileIsExit(), changeUrlToName(paramString));
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(localFile);
      localFileOutputStream2 = localFileOutputStream1;
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream2);
    }
    catch (FileNotFoundException localIOException2)
    {
      try
      {
        localFileOutputStream2.flush();
      }
      catch (IOException localIOException2)
      {
        try
        {
          localFileOutputStream2.flush();
          if (localFileOutputStream2 == null);
        }
        catch (IOException localIOException2)
        {
          try
          {
            while (true)
            {
              localFileOutputStream2.close();
              return (Bitmap)super.put(paramString, paramBitmap);
              localFileNotFoundException = localFileNotFoundException;
              localFileNotFoundException.printStackTrace();
              FileOutputStream localFileOutputStream2 = null;
              continue;
              localIOException1 = localIOException1;
              localIOException1.printStackTrace();
            }
            localIOException2 = localIOException2;
            localIOException2.printStackTrace();
          }
          catch (IOException localIOException3)
          {
            while (true)
              localIOException3.printStackTrace();
          }
        }
      }
    }
  }

  public Bitmap put(String paramString, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBoolean)
      return put(paramString, paramBitmap);
    return (Bitmap)super.put(paramString, paramBitmap);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.NetImageCache
 * JD-Core Version:    0.6.2
 */