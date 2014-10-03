.class public Lcom/ghost/xianyu/view/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/view/MyListView$MyListViewListener;,
        Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

.field private mHeaderTimeView:Landroid/widget/TextView;

.field private mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

.field private mHeaderViewContent:Landroid/widget/RelativeLayout;

.field private mHeaderViewHeight:I

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    .line 37
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    .line 43
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mIsFooterReady:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/MyListView;->initWithContext(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    .line 37
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    .line 43
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mIsFooterReady:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/MyListView;->initWithContext(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    .line 37
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    .line 43
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mIsFooterReady:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/MyListView;->initWithContext(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/view/MyListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/view/MyListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    return-void
.end method

.method static synthetic access$2(Lcom/ghost/xianyu/view/MyListView;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/ghost/xianyu/view/MyListView;->startLoadMore()V

    return-void
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    .line 81
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    new-instance v0, Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-direct {v0, p1}, Lcom/ghost/xianyu/view/HeaderLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    .line 85
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/HeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/HeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderTimeView:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/MyListView;->addHeaderView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lcom/ghost/xianyu/view/FooterLayout;

    invoke-direct {v0, p1}, Lcom/ghost/xianyu/view/FooterLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    .line 93
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/HeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ghost/xianyu/view/MyListView$1;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/view/MyListView$1;-><init>(Lcom/ghost/xianyu/view/MyListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 101
    return-void
.end method

.method private invokeOnScrolling()V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v1, Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;

    .line 183
    .local v0, l:Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;
    invoke-interface {v0, p0}, Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    .line 185
    .end local v0           #l:Lcom/ghost/xianyu/view/MyListView$OnXScrollListener;
    :cond_0
    return-void
.end method

.method private resetFooterHeight()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/FooterLayout;->getBottomMargin()I

    move-result v2

    .line 238
    .local v2, bottomMargin:I
    if-lez v2, :cond_0

    .line 239
    const/4 v0, 0x1

    iput v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollBack:I

    .line 240
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 241
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->invalidate()V

    .line 243
    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/HeaderLayout;->getVisiableHeight()I

    move-result v2

    .line 204
    .local v2, height:I
    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_0

    .line 210
    :cond_2
    const/4 v6, 0x0

    .line 212
    .local v6, finalHeight:I
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_3

    .line 213
    iget v6, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    .line 215
    :cond_3
    iput v1, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollBack:I

    .line 216
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    sub-int v4, v6, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 218
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->invalidate()V

    goto :goto_0
.end method

.method private startLoadMore()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullLoading:Z

    .line 247
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setState(I)V

    .line 248
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

    invoke-interface {v0}, Lcom/ghost/xianyu/view/MyListView$MyListViewListener;->onLoadMore()V

    .line 251
    :cond_0
    return-void
.end method

.method private updateFooterHeight(F)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/FooterLayout;->getBottomMargin()I

    move-result v1

    float-to-int v2, p1

    add-int v0, v1, v2

    .line 223
    .local v0, height:I
    iget-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullLoading:Z

    if-nez v1, :cond_0

    .line 224
    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/FooterLayout;->setState(I)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v1, v0}, Lcom/ghost/xianyu/view/FooterLayout;->setBottomMargin(I)V

    .line 234
    return-void
.end method

.method private updateHeaderHeight(F)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v2}, Lcom/ghost/xianyu/view/HeaderLayout;->getVisiableHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/HeaderLayout;->setVisiableHeight(I)V

    .line 189
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/HeaderLayout;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/HeaderLayout;->setState(I)V

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/ghost/xianyu/view/MyListView;->setSelection(I)V

    .line 197
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v0, v3}, Lcom/ghost/xianyu/view/HeaderLayout;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollBack:I

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/HeaderLayout;->setVisiableHeight(I)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->postInvalidate()V

    .line 309
    invoke-direct {p0}, Lcom/ghost/xianyu/view/MyListView;->invokeOnScrolling()V

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 312
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 329
    iput p4, p0, Lcom/ghost/xianyu/view/MyListView;->mTotalItemCount:I

    .line 330
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 333
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 324
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/high16 v2, -0x4080

    .line 255
    iget v1, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 277
    :pswitch_0
    iput v2, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 278
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_4

    .line 280
    iget-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/HeaderLayout;->getVisiableHeight()I

    move-result v1

    iget v2, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I

    if-le v1, v2, :cond_1

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    .line 282
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/HeaderLayout;->setState(I)V

    .line 283
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

    invoke-interface {v1}, Lcom/ghost/xianyu/view/MyListView$MyListViewListener;->onRefresh()V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/ghost/xianyu/view/MyListView;->resetHeaderHeight()V

    .line 297
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 261
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    sub-float v0, v1, v2

    .line 265
    .local v0, deltaY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/ghost/xianyu/view/MyListView;->mLastY:F

    .line 266
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderView:Lcom/ghost/xianyu/view/HeaderLayout;

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/HeaderLayout;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 268
    :cond_3
    const v1, 0x3fe66666

    div-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/ghost/xianyu/view/MyListView;->updateHeaderHeight(F)V

    .line 269
    invoke-direct {p0}, Lcom/ghost/xianyu/view/MyListView;->invokeOnScrolling()V

    goto :goto_0

    .line 288
    .end local v0           #deltaY:F
    :cond_4
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/MyListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/ghost/xianyu/view/MyListView;->mTotalItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 290
    iget-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/FooterLayout;->getBottomMargin()I

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mIsFooterReady:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mIsFooterReady:Z

    .line 108
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/MyListView;->addFooterView(Landroid/view/View;)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    return-void
.end method

.method public setMyListViewListener(Lcom/ghost/xianyu/view/MyListView$MyListViewListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ghost/xianyu/view/MyListView;->mListViewListener:Lcom/ghost/xianyu/view/MyListView$MyListViewListener;

    .line 337
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/ghost/xianyu/view/MyListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 317
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullLoad:Z

    .line 134
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullLoad:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/FooterLayout;->hide()V

    .line 136
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullLoading:Z

    .line 139
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/FooterLayout;->show()V

    .line 140
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setState(I)V

    .line 142
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    new-instance v1, Lcom/ghost/xianyu/view/MyListView$2;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/view/MyListView$2;-><init>(Lcom/ghost/xianyu/view/MyListView;)V

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    .line 120
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mEnablePullRefresh:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public stopLoadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullLoading:Z

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v1, p0, Lcom/ghost/xianyu/view/MyListView;->mPullLoading:Z

    .line 167
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView;->mFooterView:Lcom/ghost/xianyu/view/FooterLayout;

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/FooterLayout;->setState(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/view/MyListView;->mPullRefreshing:Z

    .line 157
    invoke-direct {p0}, Lcom/ghost/xianyu/view/MyListView;->resetHeaderHeight()V

    .line 159
    :cond_0
    return-void
.end method
