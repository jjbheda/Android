package com.ghost.xianyu.util;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class AsyncImageLoader
{
  private ExecutorService executorService = Executors.newFixedThreadPool(1);
  private final Handler handler = new Handler();
  public Map<String, SoftReference<Drawable>> imageCache = new HashMap();

  public Drawable loadDrawable(final String paramString, final ImageCallback paramImageCallback)
  {
    if (this.imageCache.containsKey(paramString))
    {
      SoftReference localSoftReference = (SoftReference)this.imageCache.get(paramString);
      if (localSoftReference.get() != null)
      {
        Log.i("TAG", "Image in cache");
        return (Drawable)localSoftReference.get();
      }
    }
    this.executorService.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          final Drawable localDrawable = AsyncImageLoader.this.loadImageFromUrl(paramString);
          AsyncImageLoader.this.imageCache.put(paramString, new SoftReference(localDrawable));
          AsyncImageLoader.this.handler.post(new Runnable()
          {
            public void run()
            {
              this.val$callback.imageLoaded(localDrawable);
            }
          });
          return;
        }
        catch (Exception localException)
        {
          throw new RuntimeException(localException);
        }
      }
    });
    return null;
  }

  protected Drawable loadImageFromUrl(String paramString)
  {
    try
    {
      Drawable localDrawable = Drawable.createFromStream(new URL(paramString).openStream(), "iamgeSync");
      return localDrawable;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public static abstract interface ImageCallback
  {
    public abstract void imageLoaded(Drawable paramDrawable);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.AsyncImageLoader
 * JD-Core Version:    0.6.2
 */