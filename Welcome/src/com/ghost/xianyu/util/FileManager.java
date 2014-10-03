package com.ghost.xianyu.util;

import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;

public class FileManager
{
  public static String path = Environment.getExternalStorageDirectory().getAbsolutePath();

  public static void WriteTxtFile(String paramString1, String paramString2)
  {
    String str = paramString1 + "\n";
    try
    {
      File localFile = new File(paramString2);
      if (!localFile.exists())
      {
        Log.d("TestFile", "Create the file:" + paramString2);
        localFile.createNewFile();
      }
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(localFile, "rw");
      localRandomAccessFile.seek(localFile.length());
      localRandomAccessFile.write(str.getBytes());
      localRandomAccessFile.close();
      return;
    }
    catch (Exception localException)
    {
      Log.e("TestFile", "Error on write File.");
    }
  }

  public static void createFolder(String paramString)
  {
    int i = 0;
    String str1 = paramString.substring(1);
    String str2 = path;
    int j;
    if (!new File(str2 + paramString).exists())
    {
      j = str1.indexOf("/");
      if ((j > 0) || (i == 0));
    }
    else
    {
      return;
    }
    String str3;
    if (j > 0)
    {
      str3 = str1.substring(0, j);
      str1 = str1.substring(j + 1);
      j = str1.indexOf("/");
    }
    while (true)
    {
      str2 = str2 + "/" + str3;
      File localFile = new File(str2);
      if (localFile.exists())
        break;
      localFile.mkdir();
      break;
      str3 = str1;
      i = 1;
    }
  }

  public static long getSDFreeSize()
  {
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() / 1024L / 1024L;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.FileManager
 * JD-Core Version:    0.6.2
 */