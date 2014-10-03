package com.taobao.top.android;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

public class Installation
{
  private static final String INSTALLATION = "INSTALLATION";
  private static String sID = null;

  public static String id(Context paramContext)
  {
    try
    {
      File localFile;
      if (sID == null)
        localFile = new File(paramContext.getFilesDir(), "INSTALLATION");
      try
      {
        if (!localFile.exists())
          writeInstallationFile(localFile);
        sID = readInstallationFile(localFile);
        String str = sID;
        return str;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    finally
    {
    }
  }

  private static String readInstallationFile(File paramFile)
    throws IOException
  {
    RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramFile, "r");
    byte[] arrayOfByte = new byte[(int)localRandomAccessFile.length()];
    localRandomAccessFile.readFully(arrayOfByte);
    localRandomAccessFile.close();
    return new String(arrayOfByte, "UTF-8");
  }

  private static void writeInstallationFile(File paramFile)
    throws IOException
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    localFileOutputStream.write(UUID.randomUUID().toString().getBytes("UTF-8"));
    localFileOutputStream.close();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.Installation
 * JD-Core Version:    0.6.2
 */