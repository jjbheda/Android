.class Lcom/ghost/xianyu/Home$5;
.super Ljava/lang/Thread;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Home;->setSession()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$5;->this$0:Lcom/ghost/xianyu/Home;

    .line 303
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    :try_start_0
    sget-object v2, Lcom/ghost/xianyu/Home;->phoneNum:Ljava/lang/String;

    sget-object v3, Lcom/ghost/xianyu/Home;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ghost/xianyu/internet/HttpConnection;->post_login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, response:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Lcom/ghost/xianyu/internet/HttpConnection;->post_version()Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/ghost/xianyu/Home$5;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ghost/xianyu/Home;->access$5(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1           #response:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
