package com.ghost.xianyu.util;

import android.app.ProgressDialog;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;

public class DownloadApkFile
  implements Runnable
{
  public static final int MSG_DIALOG = 3;
  public static final int MSG_DONE = 1;
  public static final int MSG_FAIL = -1;
  public static final int MSG_NO_SDCARD = -2;
  public static final int MSG_NO_SPACE = 0;
  public static final int MSG_STOP = 2;
  private Handler handler;
  private boolean isCancel;
  private ProgressDialog pd;
  private URL url;

  public DownloadApkFile(String paramString, ProgressDialog paramProgressDialog, Handler paramHandler)
  {
    this.pd = paramProgressDialog;
    this.handler = paramHandler;
    try
    {
      this.url = new URL(paramString);
      this.isCancel = false;
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
      {
        this.url = null;
        localMalformedURLException.printStackTrace();
      }
    }
  }

  public void cancel()
  {
    this.isCancel = true;
  }

  public void run()
  {
    if (this.url == null)
    {
      this.handler.sendEmptyMessage(-1);
      return;
    }
    double d;
    FileOutputStream localFileOutputStream;
    byte[] arrayOfByte;
    int i;
    int j;
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)this.url.openConnection();
      localHttpURLConnection.connect();
      localHttpURLConnection.getResponseCode();
      long l = FileManager.getSDFreeSize();
      Log.i("ASAM", "SD size " + l + "MB");
      if (l <= 1 + localHttpURLConnection.getContentLength() / 1024 / 1024)
        break label654;
      d = localHttpURLConnection.getContentLength();
      String str1 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/XianYu/Download";
      FileManager.createFolder("/XianYu/Download");
      File localFile = new File(str1 + "/咸鱼代付.apk.tmp");
      if (localFile.exists())
        localFile.delete();
      InputStream localInputStream = localHttpURLConnection.getInputStream();
      if (localInputStream == null)
      {
        Log.e(getClass().getName(), "Unable to create InputStream");
        this.handler.sendEmptyMessage(-1);
      }
      localFileOutputStream = new FileOutputStream(localFile);
      arrayOfByte = new byte[10240];
      i = 0;
      j = localInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      System.out.println("stream read to buffer: numread=" + j);
      if (j < 0)
      {
        Log.i("download apk", "has done");
        localFile.renameTo(new File(str1 + "/咸鱼代付.apk"));
        this.handler.sendEmptyMessage(1);
        label317: localFileOutputStream.close();
        localInputStream.close();
        localHttpURLConnection.disconnect();
        return;
      }
    }
    catch (IOException localIOException)
    {
      this.handler.sendEmptyMessage(-1);
      localIOException.printStackTrace();
      return;
    }
    i += j;
    if (d / 1024.0D / 1024.0D > 1.0D)
    {
      String str4 = new DecimalFormat("#.00").format(d / 1024.0D / 1024.0D);
      String str5 = new DecimalFormat("#.00").format(i / 1024.0D / 1024.0D);
      this.pd.setMax((int)(d / 1024.0D));
      this.pd.setProgress(i / 1024);
      this.pd.setProgressNumberFormat(str5 + "MB" + "/" + str4 + "MB");
    }
    while (true)
    {
      localFileOutputStream.write(arrayOfByte, 0, j);
      if (!this.isCancel)
        break;
      break label317;
      if (d / 1024.0D > 1.0D)
      {
        String str2 = new DecimalFormat("#.00").format(d / 1024.0D);
        String str3 = new DecimalFormat("#.00").format(i / 1024.0D);
        this.pd.setMax((int)d);
        this.pd.setProgress(i);
        this.pd.setProgressNumberFormat(str3 + "KB" + "/" + str2 + "KB");
      }
      else
      {
        this.pd.setMax((int)d);
        this.pd.setProgress(i);
        this.pd.setProgressNumberFormat("%1d/%2d");
      }
    }
    label654: this.handler.sendEmptyMessage(0);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.DownloadApkFile
 * JD-Core Version:    0.6.2
 */