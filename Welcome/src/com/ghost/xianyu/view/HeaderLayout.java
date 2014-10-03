package com.ghost.xianyu.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;

public class HeaderLayout extends LinearLayout
{
  public static final int STATE_NORMAL = 0;
  public static final int STATE_READY = 1;
  public static final int STATE_REFRESHING = 2;
  private final int ROTATE_ANIM_DURATION = 180;
  private ImageView mArrowImageView;
  private LinearLayout mContainer;
  private TextView mHintTextView;
  private ProgressBar mProgressBar;
  private Animation mRotateDownAnim;
  private Animation mRotateUpAnim;
  private int mState = 0;

  public HeaderLayout(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public HeaderLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0);
    this.mContainer = ((LinearLayout)LayoutInflater.from(paramContext).inflate(2130903053, null));
    addView(this.mContainer, localLayoutParams);
    setGravity(80);
    this.mArrowImageView = ((ImageView)findViewById(2131296388));
    this.mHintTextView = ((TextView)findViewById(2131296386));
    this.mProgressBar = ((ProgressBar)findViewById(2131296389));
    this.mRotateUpAnim = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.mRotateUpAnim.setDuration(180L);
    this.mRotateUpAnim.setFillAfter(true);
    this.mRotateDownAnim = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    this.mRotateDownAnim.setDuration(180L);
    this.mRotateDownAnim.setFillAfter(true);
  }

  public int getVisiableHeight()
  {
    return this.mContainer.getHeight();
  }

  public void setState(int paramInt)
  {
    if (paramInt == this.mState)
      return;
    if (paramInt == 2)
    {
      this.mArrowImageView.clearAnimation();
      this.mArrowImageView.setVisibility(4);
      this.mProgressBar.setVisibility(0);
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      this.mState = paramInt;
      return;
      this.mArrowImageView.setVisibility(0);
      this.mProgressBar.setVisibility(4);
      break;
      if (this.mState == 1)
        this.mArrowImageView.startAnimation(this.mRotateDownAnim);
      if (this.mState == 2)
        this.mArrowImageView.clearAnimation();
      this.mHintTextView.setText(2131099651);
      continue;
      if (this.mState != 1)
      {
        this.mArrowImageView.clearAnimation();
        this.mArrowImageView.startAnimation(this.mRotateUpAnim);
        this.mHintTextView.setText(2131099652);
        continue;
        this.mHintTextView.setText(2131099653);
      }
    }
  }

  public void setVisiableHeight(int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.mContainer.getLayoutParams();
    localLayoutParams.height = paramInt;
    this.mContainer.setLayoutParams(localLayoutParams);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.view.HeaderLayout
 * JD-Core Version:    0.6.2
 */