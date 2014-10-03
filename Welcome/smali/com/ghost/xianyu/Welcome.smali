.class public Lcom/ghost/xianyu/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# instance fields
.field handler:Landroid/os/Handler;

.field isFirst:Z

.field pref:Landroid/content/SharedPreferences;

.field welcomeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Lcom/ghost/xianyu/Welcome$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Welcome$1;-><init>(Lcom/ghost/xianyu/Welcome;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Welcome;->handler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/ghost/xianyu/Welcome;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/ghost/xianyu/Welcome;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 52
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Welcome;->setContentView(I)V

    .line 54
    const v2, 0x7f090073

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ghost/xianyu/Welcome;->welcomeLayout:Landroid/widget/RelativeLayout;

    .line 56
    invoke-virtual {p0}, Lcom/ghost/xianyu/Welcome;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 57
    .local v1, ins:Ljava/io/InputStream;
    new-instance v0, Lcom/ghost/xianyu/util/ImageProcessor;

    invoke-direct {v0, v1}, Lcom/ghost/xianyu/util/ImageProcessor;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v0, imgProc:Lcom/ghost/xianyu/util/ImageProcessor;
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome;->welcomeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/ghost/xianyu/util/ImageProcessor;->processToDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const-string v2, "user_info"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ghost/xianyu/Welcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ghost/xianyu/Welcome;->pref:Landroid/content/SharedPreferences;

    .line 61
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome;->pref:Landroid/content/SharedPreferences;

    const-string v3, "isFirst"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ghost/xianyu/Welcome;->isFirst:Z

    .line 63
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ghost/xianyu/Welcome$2;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Welcome$2;-><init>(Lcom/ghost/xianyu/Welcome;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method
