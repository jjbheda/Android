package com.ghost.xianyu.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TabWidget;
import android.widget.TextView;

public class BadgeView extends TextView
{
  private static final int DEFAULT_BADGE_COLOR = 0;
  private static final int DEFAULT_CORNER_RADIUS_DIP = 8;
  private static final int DEFAULT_LR_PADDING_DIP = 5;
  private static final int DEFAULT_MARGIN_DIP = 5;
  private static final int DEFAULT_POSITION = 2;
  private static final int DEFAULT_TEXT_COLOR = -1;
  public static final int POSITION_BOTTOM_LEFT = 3;
  public static final int POSITION_BOTTOM_RIGHT = 4;
  public static final int POSITION_CENTER = 5;
  public static final int POSITION_TOP_LEFT = 1;
  public static final int POSITION_TOP_RIGHT = 2;
  private static Animation fadeIn;
  private static Animation fadeOut;
  private ShapeDrawable badgeBg;
  private int badgeColor;
  private int badgeMarginH;
  private int badgeMarginV;
  private int badgePosition;
  private Context context;
  private boolean isShown;
  private View target;
  private int targetTabIndex;

  public BadgeView(Context paramContext)
  {
    this(paramContext, null, 16842884);
  }

  public BadgeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842884);
  }

  public BadgeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, null, 0);
  }

  public BadgeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, View paramView, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    init(paramContext, paramView, paramInt2);
  }

  public BadgeView(Context paramContext, View paramView)
  {
    this(paramContext, null, 16842884, paramView, 0);
  }

  public BadgeView(Context paramContext, TabWidget paramTabWidget, int paramInt)
  {
    this(paramContext, null, 16842884, paramTabWidget, paramInt);
  }

  private void applyLayoutParams()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    switch (this.badgePosition)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      setLayoutParams(localLayoutParams);
      return;
      localLayoutParams.gravity = 51;
      localLayoutParams.setMargins(this.badgeMarginH, this.badgeMarginV, 0, 0);
      continue;
      localLayoutParams.gravity = 53;
      localLayoutParams.setMargins(0, this.badgeMarginV, this.badgeMarginH, 0);
      continue;
      localLayoutParams.gravity = 83;
      localLayoutParams.setMargins(this.badgeMarginH, 0, 0, this.badgeMarginV);
      continue;
      localLayoutParams.gravity = 85;
      localLayoutParams.setMargins(0, 0, this.badgeMarginH, this.badgeMarginV);
      continue;
      localLayoutParams.gravity = 17;
      localLayoutParams.setMargins(0, 0, 0, 0);
    }
  }

  private void applyTo(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    ViewParent localViewParent = paramView.getParent();
    FrameLayout localFrameLayout = new FrameLayout(this.context);
    if ((paramView instanceof TabWidget))
    {
      View localView = ((TabWidget)paramView).getChildTabViewAt(this.targetTabIndex);
      this.target = localView;
      ((ViewGroup)localView).addView(localFrameLayout, new ViewGroup.LayoutParams(-1, -1));
      setVisibility(8);
      localFrameLayout.addView(this);
      return;
    }
    ViewGroup localViewGroup = (ViewGroup)localViewParent;
    int i = localViewGroup.indexOfChild(paramView);
    localViewGroup.removeView(paramView);
    localViewGroup.addView(localFrameLayout, i, localLayoutParams);
    localFrameLayout.addView(paramView);
    setVisibility(8);
    localFrameLayout.addView(this);
    localViewGroup.invalidate();
  }

  private int dipToPixels(int paramInt)
  {
    Resources localResources = getResources();
    return (int)TypedValue.applyDimension(1, paramInt, localResources.getDisplayMetrics());
  }

  private ShapeDrawable getDefaultBackground()
  {
    int i = dipToPixels(8);
    float[] arrayOfFloat = new float[8];
    arrayOfFloat[0] = i;
    arrayOfFloat[1] = i;
    arrayOfFloat[2] = i;
    arrayOfFloat[3] = i;
    arrayOfFloat[4] = i;
    arrayOfFloat[5] = i;
    arrayOfFloat[6] = i;
    arrayOfFloat[7] = i;
    ShapeDrawable localShapeDrawable = new ShapeDrawable(new RoundRectShape(arrayOfFloat, null, null));
    localShapeDrawable.getPaint().setColor(this.badgeColor);
    return localShapeDrawable;
  }

  private void hide(boolean paramBoolean, Animation paramAnimation)
  {
    setVisibility(8);
    if (paramBoolean)
      startAnimation(paramAnimation);
    this.isShown = false;
  }

  private void init(Context paramContext, View paramView, int paramInt)
  {
    this.context = paramContext;
    this.target = paramView;
    this.targetTabIndex = paramInt;
    this.badgePosition = 2;
    this.badgeMarginH = dipToPixels(5);
    this.badgeMarginV = this.badgeMarginH;
    this.badgeColor = DEFAULT_BADGE_COLOR;
    setTypeface(Typeface.DEFAULT_BOLD);
    int i = dipToPixels(5);
    setPadding(i, 0, i, 0);
    setTextColor(-1);
    fadeIn = new AlphaAnimation(0.0F, 1.0F);
    fadeIn.setInterpolator(new DecelerateInterpolator());
    fadeIn.setDuration(200L);
    fadeOut = new AlphaAnimation(1.0F, 0.0F);
    fadeOut.setInterpolator(new AccelerateInterpolator());
    fadeOut.setDuration(200L);
    this.isShown = false;
    if (this.target != null)
    {
      applyTo(this.target);
      return;
    }
    show();
  }

  private void show(boolean paramBoolean, Animation paramAnimation)
  {
    if (getBackground() == null)
    {
      if (this.badgeBg == null)
        this.badgeBg = getDefaultBackground();
      setBackgroundDrawable(this.badgeBg);
    }
    applyLayoutParams();
    if (paramBoolean)
      startAnimation(paramAnimation);
    setVisibility(0);
    this.isShown = true;
  }

  private void toggle(boolean paramBoolean, Animation paramAnimation1, Animation paramAnimation2)
  {
    boolean bool = true;
    if (this.isShown)
    {
      if ((paramBoolean) && (paramAnimation2 != null));
      while (true)
      {
        hide(bool, paramAnimation2);
        return;
        bool = false;
      }
    }
    if ((paramBoolean) && (paramAnimation1 != null));
    while (true)
    {
      show(bool, paramAnimation1);
      return;
      bool = false;
    }
  }

  public int decrement(int paramInt)
  {
    return increment(-paramInt);
  }

  public int getBadgeBackgroundColor()
  {
    return this.badgeColor;
  }

  public int getBadgePosition()
  {
    return this.badgePosition;
  }

  public int getHorizontalBadgeMargin()
  {
    return this.badgeMarginH;
  }

  public View getTarget()
  {
    return this.target;
  }

  public int getVerticalBadgeMargin()
  {
    return this.badgeMarginV;
  }

  public void hide()
  {
    hide(false, null);
  }

  public void hide(Animation paramAnimation)
  {
    hide(true, paramAnimation);
  }

  public void hide(boolean paramBoolean)
  {
    hide(paramBoolean, fadeOut);
  }

  public int increment(int paramInt)
  {
    CharSequence localCharSequence = getText();
    if (localCharSequence != null);
    while (true)
    {
      try
      {
        int k = Integer.parseInt(localCharSequence.toString());
        i = k;
        int j = i + paramInt;
        setText(String.valueOf(j));
        return j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i = 0;
        continue;
      }
      int i = 0;
    }
  }

  public boolean isShown()
  {
    return this.isShown;
  }

  public void setBadgeBackgroundColor(int paramInt)
  {
    this.badgeColor = paramInt;
    this.badgeBg = getDefaultBackground();
  }

  public void setBadgeMargin(int paramInt)
  {
    this.badgeMarginH = paramInt;
    this.badgeMarginV = paramInt;
  }

  public void setBadgeMargin(int paramInt1, int paramInt2)
  {
    this.badgeMarginH = paramInt1;
    this.badgeMarginV = paramInt2;
  }

  public void setBadgePosition(int paramInt)
  {
    this.badgePosition = paramInt;
  }

  public void show()
  {
    show(false, null);
  }

  public void show(Animation paramAnimation)
  {
    show(true, paramAnimation);
  }

  public void show(boolean paramBoolean)
  {
    show(paramBoolean, fadeIn);
  }

  public void toggle()
  {
    toggle(false, null, null);
  }

  public void toggle(Animation paramAnimation1, Animation paramAnimation2)
  {
    toggle(true, paramAnimation1, paramAnimation2);
  }

  public void toggle(boolean paramBoolean)
  {
    toggle(paramBoolean, fadeIn, fadeOut);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.view.BadgeView
 * JD-Core Version:    0.6.2
 */