.class public Lcom/ghost/xianyu/view/LineBreakLayout;
.super Landroid/view/ViewGroup;
.source "LineBreakLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LineBreakLayout"

.field public static final VIEW_MARGIN:I = 0xa


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/LineBreakLayout;->getChildCount()I

    move-result v1

    .line 64
    .local v1, count:I
    const/4 v6, 0x0

    .line 65
    .local v6, row:I
    move v4, p2

    .line 66
    .local v4, lengthX:I
    move v5, p3

    .line 67
    .local v5, lengthY:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 89
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, v3}, Lcom/ghost/xianyu/view/LineBreakLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 71
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 72
    .local v2, height:I
    add-int/lit8 v8, v7, 0xa

    add-int/2addr v4, v8

    .line 73
    add-int/lit8 v8, v2, 0xa

    mul-int/2addr v8, v6

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v2

    add-int v5, v8, p3

    .line 75
    if-le v4, p4, :cond_1

    .line 76
    add-int/lit8 v8, v7, 0xa

    add-int v4, v8, p2

    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 78
    add-int/lit8 v8, v2, 0xa

    mul-int/2addr v8, v6

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v2

    add-int v5, v8, p3

    .line 81
    :cond_1
    sub-int v8, v4, v7

    sub-int v9, v5, v2

    invoke-virtual {v0, v8, v9, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 83
    if-nez v3, :cond_2

    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    move v4, p2

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 34
    .local v5, widthSize:I
    const/4 v2, 0x0

    .line 35
    .local v2, height:I
    const/4 v4, 0x0

    .line 36
    .local v4, width:I
    invoke-virtual {p0}, Lcom/ghost/xianyu/view/LineBreakLayout;->getChildCount()I

    move-result v1

    .line 38
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 56
    add-int/lit8 v6, v2, 0xa

    invoke-virtual {p0, v5, v6}, Lcom/ghost/xianyu/view/LineBreakLayout;->setMeasuredDimension(II)V

    .line 57
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v3}, Lcom/ghost/xianyu/view/LineBreakLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v7, v7}, Landroid/view/View;->measure(II)V

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    .line 43
    if-lez v3, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v4, v6

    .line 45
    :cond_1
    const/4 v6, 0x2

    if-ge v3, v6, :cond_3

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    .line 38
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_3
    if-le v4, v5, :cond_2

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/lit8 v4, v6, 0xa

    goto :goto_1
.end method
