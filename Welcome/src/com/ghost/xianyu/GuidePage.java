package com.ghost.xianyu;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.ghost.xianyu.util.ImageProcessor;
import java.util.ArrayList;
import java.util.List;

public class GuidePage extends Activity
  implements ViewPager.OnPageChangeListener
{
  private static final int[] guide_pics = { 2130837524, 2130837525, 2130837526, 2130837527 };
  private ViewGroup main;
  private ArrayList<View> pageViews;
  private ViewPager viewPager;
  private ViewPagerAdapter vpAdapter;

  public void ToHome()
  {
    System.gc();
    startActivity(new Intent(this, Login.class));
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setFlags(1024, 1024);
    requestWindowFeature(1);
    this.pageViews = new ArrayList();
    this.main = ((ViewGroup)getLayoutInflater().inflate(2130903042, null));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    for (int i = 0; ; i++)
    {
      if (i >= guide_pics.length)
      {
        this.pageViews.add(new View(this));
        this.viewPager = ((ViewPager)this.main.findViewById(2131296274));
        this.vpAdapter = new ViewPagerAdapter(this.pageViews);
        this.viewPager.setAdapter(this.vpAdapter);
        this.viewPager.setOnPageChangeListener(this);
        setContentView(this.main);
        return;
      }
      RelativeLayout localRelativeLayout = new RelativeLayout(this);
      localRelativeLayout.setLayoutParams(localLayoutParams);
      localRelativeLayout.setBackgroundDrawable(new ImageProcessor(getResources().openRawResource(guide_pics[i])).processToDrawable());
      this.pageViews.add(localRelativeLayout);
    }
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void onPageSelected(int paramInt)
  {
    if (paramInt == -1 + this.pageViews.size())
      ToHome();
  }

  public class ViewPagerAdapter extends PagerAdapter
  {
    private List<View> views;

    public ViewPagerAdapter(List<View> localObject)
    {
//      Object localObject; modified
      this.views = localObject;
    }

    public void destroyItem(View paramView, int paramInt, Object paramObject)
    {
      ((ViewPager)paramView).removeView((View)this.views.get(paramInt));
    }

    public void finishUpdate(View paramView)
    {
    }

    public int getCount()
    {
      if (this.views != null)
        return this.views.size();
      return 0;
    }

    public Object instantiateItem(View paramView, int paramInt)
    {
      ((ViewPager)paramView).addView((View)this.views.get(paramInt));
      return this.views.get(paramInt);
    }

    public boolean isViewFromObject(View paramView, Object paramObject)
    {
      return paramView == paramObject;
    }

    public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
    {
    }

    public Parcelable saveState()
    {
      return null;
    }

    public void startUpdate(View paramView)
    {
    }
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.GuidePage
 * JD-Core Version:    0.6.2
 */