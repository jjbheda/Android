.class Lcom/ghost/xianyu/Home$9;
.super Ljava/lang/Thread;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Home;->parseOtherInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Home;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Home;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Home$9;->this$0:Lcom/ghost/xianyu/Home;

    .line 488
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/ghost/xianyu/Home$9;->this$0:Lcom/ghost/xianyu/Home;

    iget-object v2, p0, Lcom/ghost/xianyu/Home$9;->this$0:Lcom/ghost/xianyu/Home;

    iget-object v2, v2, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/Home;->isGetLinkInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/ghost/xianyu/Home$9;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ghost/xianyu/Home;->access$7(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/Home$9;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ghost/xianyu/Home;->access$7(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
