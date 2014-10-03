package com.ghost.xianyu.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.ghost.xianyu.util.NetImageCache;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class NetImageView extends ImageView
{
  private String mPicUrl;

  public NetImageView(Context paramContext)
  {
    super(paramContext);
  }

  public NetImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public NetImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
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

  private void loadImage(String paramString)
  {
    if (NetImageCache.getInstance().isBitmapExit(paramString))
    {
      setImageBitmap((Bitmap)NetImageCache.getInstance().get(paramString));
      return;
    }
    NetImageDownLoad localNetImageDownLoad = new NetImageDownLoad(null);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.mPicUrl;
    localNetImageDownLoad.execute(arrayOfString);
  }

  private void loadImage1(String paramString)
  {
    if ((NetImageCache.getInstance().isBitmapExit(paramString)) && (((String)getTag()).equals(paramString)))
    {
      setImageBitmap((Bitmap)NetImageCache.getInstance().get(paramString));
      return;
    }
    setImageResource(2130837540);
    NetImageDownLoad localNetImageDownLoad = new NetImageDownLoad(null);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.mPicUrl;
    localNetImageDownLoad.execute(arrayOfString);
  }

  public void setImageUrl(String paramString)
  {
    this.mPicUrl = paramString;
    loadImage(paramString);
  }

  public void setImageUrl1(String paramString)
  {
    this.mPicUrl = paramString;
    loadImage1(paramString);
  }

  private class NetImageDownLoad extends AsyncTask<String, Void, Bitmap>
  {
    private NetImageDownLoad()
    {
    }

    // ERROR //
    protected Bitmap doInBackground(String[] paramArrayOfString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aconst_null
      //   3: astore_3
      //   4: new 25	java/net/URL
      //   7: dup
      //   8: aload_1
      //   9: iconst_0
      //   10: aaload
      //   11: invokespecial 28	java/net/URL:<init>	(Ljava/lang/String;)V
      //   14: astore 4
      //   16: aload 4
      //   18: invokevirtual 32	java/net/URL:openConnection	()Ljava/net/URLConnection;
      //   21: checkcast 34	java/net/HttpURLConnection
      //   24: astore_3
      //   25: aload_3
      //   26: ldc 36
      //   28: invokevirtual 39	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
      //   31: aload_3
      //   32: sipush 10000
      //   35: invokevirtual 43	java/net/HttpURLConnection:setConnectTimeout	(I)V
      //   38: aload_3
      //   39: invokevirtual 47	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   42: astore_2
      //   43: aload_0
      //   44: getfield 11	com/ghost/xianyu/view/NetImageView$NetImageDownLoad:this$0	Lcom/ghost/xianyu/view/NetImageView;
      //   47: aload_2
      //   48: invokestatic 53	com/ghost/xianyu/view/NetImageView:access$0	(Lcom/ghost/xianyu/view/NetImageView;Ljava/io/InputStream;)[B
      //   51: astore 12
      //   53: new 55	android/graphics/BitmapFactory$Options
      //   56: dup
      //   57: invokespecial 56	android/graphics/BitmapFactory$Options:<init>	()V
      //   60: astore 13
      //   62: aload 13
      //   64: iconst_0
      //   65: putfield 60	android/graphics/BitmapFactory$Options:inDither	Z
      //   68: aload 13
      //   70: aconst_null
      //   71: putfield 64	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
      //   74: aload 13
      //   76: iconst_4
      //   77: putfield 68	android/graphics/BitmapFactory$Options:inSampleSize	I
      //   80: aload 12
      //   82: iconst_0
      //   83: aload 12
      //   85: arraylength
      //   86: aload 13
      //   88: invokestatic 74	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
      //   91: astore 14
      //   93: aload 14
      //   95: astore 8
      //   97: aload_2
      //   98: ifnull +7 -> 105
      //   101: aload_2
      //   102: invokevirtual 79	java/io/InputStream:close	()V
      //   105: aload_3
      //   106: ifnull +142 -> 248
      //   109: aload_3
      //   110: invokevirtual 82	java/net/HttpURLConnection:disconnect	()V
      //   113: aload 8
      //   115: areturn
      //   116: astore 5
      //   118: aload 5
      //   120: invokevirtual 85	java/net/MalformedURLException:printStackTrace	()V
      //   123: aload_2
      //   124: ifnull +7 -> 131
      //   127: aload_2
      //   128: invokevirtual 79	java/io/InputStream:close	()V
      //   131: aconst_null
      //   132: astore 8
      //   134: aload_3
      //   135: ifnull -22 -> 113
      //   138: aload_3
      //   139: invokevirtual 82	java/net/HttpURLConnection:disconnect	()V
      //   142: aconst_null
      //   143: areturn
      //   144: astore 9
      //   146: aload 9
      //   148: invokevirtual 86	java/io/IOException:printStackTrace	()V
      //   151: goto -20 -> 131
      //   154: astore 10
      //   156: aload 10
      //   158: invokevirtual 86	java/io/IOException:printStackTrace	()V
      //   161: aload_2
      //   162: ifnull +7 -> 169
      //   165: aload_2
      //   166: invokevirtual 79	java/io/InputStream:close	()V
      //   169: aconst_null
      //   170: astore 8
      //   172: aload_3
      //   173: ifnull -60 -> 113
      //   176: aload_3
      //   177: invokevirtual 82	java/net/HttpURLConnection:disconnect	()V
      //   180: aconst_null
      //   181: areturn
      //   182: astore 11
      //   184: aload 11
      //   186: invokevirtual 86	java/io/IOException:printStackTrace	()V
      //   189: goto -20 -> 169
      //   192: astore 6
      //   194: aload_2
      //   195: ifnull +7 -> 202
      //   198: aload_2
      //   199: invokevirtual 79	java/io/InputStream:close	()V
      //   202: aload_3
      //   203: ifnull +7 -> 210
      //   206: aload_3
      //   207: invokevirtual 82	java/net/HttpURLConnection:disconnect	()V
      //   210: aload 6
      //   212: athrow
      //   213: astore 7
      //   215: aload 7
      //   217: invokevirtual 86	java/io/IOException:printStackTrace	()V
      //   220: goto -18 -> 202
      //   223: astore 15
      //   225: aload 15
      //   227: invokevirtual 86	java/io/IOException:printStackTrace	()V
      //   230: goto -125 -> 105
      //   233: astore 6
      //   235: goto -41 -> 194
      //   238: astore 10
      //   240: goto -84 -> 156
      //   243: astore 5
      //   245: goto -127 -> 118
      //   248: aload 8
      //   250: areturn
      //
      // Exception table:
      //   from	to	target	type
      //   4	16	116	java/net/MalformedURLException
      //   127	131	144	java/io/IOException
      //   4	16	154	java/io/IOException
      //   165	169	182	java/io/IOException
      //   4	16	192	finally
      //   118	123	192	finally
      //   156	161	192	finally
      //   198	202	213	java/io/IOException
      //   101	105	223	java/io/IOException
      //   16	93	233	finally
      //   16	93	238	java/io/IOException
      //   16	93	243	java/net/MalformedURLException
    }

    protected void onPostExecute(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        NetImageView.this.setImageBitmap(paramBitmap);
        NetImageCache.getInstance().put(NetImageView.this.mPicUrl, paramBitmap, true);
      }
      while (true)
      {
        super.onPostExecute(paramBitmap);
        return;
        NetImageView.this.setImageResource(2130837538);
      }
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
    }

    protected void onProgressUpdate(Void[] paramArrayOfVoid)
    {
      super.onProgressUpdate(paramArrayOfVoid);
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.view.NetImageView
 * JD-Core Version:    0.6.2
 */