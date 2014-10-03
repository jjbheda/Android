package com.ghost.xianyu.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.InputStream;
import java.lang.ref.SoftReference;

public class ImageProcessor
{
  private Bitmap bitmap;
  private InputStream ins;
  private BitmapFactory.Options options = new BitmapFactory.Options();

  public ImageProcessor(InputStream paramInputStream)
  {
    this.options.inPreferredConfig = Bitmap.Config.RGB_565;
    this.options.inPurgeable = true;
    this.options.inJustDecodeBounds = false;
    this.options.inSampleSize = 1;
    this.ins = paramInputStream;
  }

  public Bitmap decodeStream()
  {
    return BitmapFactory.decodeStream(this.ins, null, this.options);
  }

  public Bitmap getBitmap(Bitmap paramBitmap)
  {
    this.bitmap = ((Bitmap)new SoftReference(paramBitmap).get());
    return this.bitmap;
  }

  public Drawable processToDrawable()
  {
    return new BitmapDrawable(getBitmap(decodeStream()));
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.ImageProcessor
 * JD-Core Version:    0.6.2
 */