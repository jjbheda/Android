.class public Lcom/ghost/xianyu/GuidePage;
.super Landroid/app/Activity;
.source "GuidePage.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final guide_pics:[I


# instance fields
.field private main:Landroid/view/ViewGroup;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private vpAdapter:Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ghost/xianyu/GuidePage;->guide_pics:[I

    .line 31
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public ToHome()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/GuidePage;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/ghost/xianyu/GuidePage;->finish()V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x400

    const/4 v8, -0x2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/ghost/xianyu/GuidePage;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 38
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/ghost/xianyu/GuidePage;->requestWindowFeature(I)Z

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ghost/xianyu/GuidePage;->pageViews:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Lcom/ghost/xianyu/GuidePage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 42
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/ghost/xianyu/GuidePage;->main:Landroid/view/ViewGroup;

    .line 43
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v4, mParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v6, Lcom/ghost/xianyu/GuidePage;->guide_pics:[I

    array-length v6, v6

    if-lt v0, v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->pageViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->main:Landroid/view/ViewGroup;

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/ghost/xianyu/GuidePage;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    new-instance v6, Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;

    iget-object v7, p0, Lcom/ghost/xianyu/GuidePage;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;-><init>(Lcom/ghost/xianyu/GuidePage;Ljava/util/List;)V

    iput-object v6, p0, Lcom/ghost/xianyu/GuidePage;->vpAdapter:Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;

    .line 59
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/ghost/xianyu/GuidePage;->vpAdapter:Lcom/ghost/xianyu/GuidePage$ViewPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 61
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->main:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Lcom/ghost/xianyu/GuidePage;->setContentView(Landroid/view/View;)V

    .line 62
    return-void

    .line 47
    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .local v5, rLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/ghost/xianyu/GuidePage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/ghost/xianyu/GuidePage;->guide_pics:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 50
    .local v3, ins:Ljava/io/InputStream;
    new-instance v1, Lcom/ghost/xianyu/util/ImageProcessor;

    invoke-direct {v1, v3}, Lcom/ghost/xianyu/util/ImageProcessor;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v1, imgProc:Lcom/ghost/xianyu/util/ImageProcessor;
    invoke-virtual {v1}, Lcom/ghost/xianyu/util/ImageProcessor;->processToDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v6, p0, Lcom/ghost/xianyu/GuidePage;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 109
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 112
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ghost/xianyu/GuidePage;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/ghost/xianyu/GuidePage;->ToHome()V

    .line 119
    :cond_0
    return-void
.end method
