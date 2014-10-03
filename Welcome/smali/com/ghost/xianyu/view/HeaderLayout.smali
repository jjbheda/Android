.class public Lcom/ghost/xianyu/view/HeaderLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderLayout.java"


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_REFRESHING:I = 0x2


# instance fields
.field private final ROTATE_ANIM_DURATION:I

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mHintTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    .line 27
    const/16 v0, 0xb4

    iput v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->ROTATE_ANIM_DURATION:I

    .line 35
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/HeaderLayout;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    .line 27
    const/16 v0, 0xb4

    iput v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->ROTATE_ANIM_DURATION:I

    .line 44
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/HeaderLayout;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 49
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mContainer:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v7}, Lcom/ghost/xianyu/view/HeaderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/HeaderLayout;->setGravity(I)V

    .line 54
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/HeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/HeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mHintTextView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/HeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 58
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 59
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 61
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateDownAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateDownAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public getVisiableHeight()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    if-ne p1, v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 70
    :cond_0
    if-ne p1, v3, :cond_2

    .line 71
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 72
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 102
    :cond_1
    :goto_2
    iput p1, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 81
    :pswitch_0
    iget v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    if-ne v0, v2, :cond_3

    .line 82
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    :cond_3
    iget v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    if-ne v0, v3, :cond_4

    .line 85
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 90
    :pswitch_1
    iget v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mState:I

    if-eq v0, v2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 92
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVisiableHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 106
    if-gez p1, :cond_0

    .line 107
    const/4 p1, 0x0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    iget-object v1, p0, Lcom/ghost/xianyu/view/HeaderLayout;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method
