package com.ghost.xianyu.util;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import java.net.URL;

public class ImageLoader
{
  String image_path;

  public ImageLoader(String paramString)
  {
    this.image_path = paramString;
  }

  public void loadImage(final ImageCallBack paramImageCallBack)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          Drawable localDrawable = Drawable.createFromStream(new URL(ImageLoader.this.image_path).openStream(), "");
          Message localMessage = Message.obtain();
          localMessage.obj = localDrawable;
          this.val$handler.sendMessage(localMessage);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }).start();
  }

  public static abstract interface ImageCallBack
  {
    public abstract void getDrawable(Drawable paramDrawable);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.ImageLoader
 * JD-Core Version:    0.6.2
 */