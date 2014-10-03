.class Lcom/ghost/xianyu/PasswrodRetake$3;
.super Ljava/lang/Thread;
.source "PasswrodRetake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/PasswrodRetake;->sendMessToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/PasswrodRetake;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/PasswrodRetake;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    .line 247
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v2, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v2, v2, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    invoke-static {v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_findPassword1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, v1, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, v1, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, v1, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$3;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, v1, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
