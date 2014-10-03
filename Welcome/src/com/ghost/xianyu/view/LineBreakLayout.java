package com.ghost.xianyu.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

public class LineBreakLayout extends ViewGroup
{
  private static final String TAG = "LineBreakLayout";
  public static final int VIEW_MARGIN = 10;

  public LineBreakLayout(Context paramContext)
  {
    super(paramContext);
  }

  public LineBreakLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public LineBreakLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = 0;
    int k = paramInt1;
    for (int m = 0; ; m++)
    {
      if (m >= i)
        return;
      View localView = getChildAt(m);
      int n = localView.getMeasuredWidth();
      int i1 = localView.getMeasuredHeight();
      k += n + 10;
      int i2 = paramInt2 + (i1 + (10 + j * (i1 + 10)));
      if (k > paramInt3)
      {
        k = paramInt1 + (n + 10);
        j++;
        i2 = paramInt2 + (i1 + (10 + j * (i1 + 10)));
      }
      localView.layout(k - n, i2 - i1, k, i2);
      if (m == 0)
      {
        j++;
        k = paramInt1;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = 0;
    int k = 0;
    int m = getChildCount();
    int n = 0;
    if (n >= m)
    {
      setMeasuredDimension(i, j + 10);
      return;
    }
    View localView = getChildAt(n);
    localView.measure(0, 0);
    if (localView.getWidth() > 0)
    {
      if (n > 0)
        k += 10 + localView.getWidth();
      if (n >= 2)
        break label110;
      j += 10 + localView.getHeight();
    }
    while (true)
    {
      n++;
      break;
      label110: if (k > i)
      {
        j += 10 + localView.getHeight();
        k = 10 + localView.getWidth();
      }
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.view.LineBreakLayout
 * JD-Core Version:    0.6.2
 */