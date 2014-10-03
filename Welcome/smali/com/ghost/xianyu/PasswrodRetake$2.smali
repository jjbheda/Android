.class Lcom/ghost/xianyu/PasswrodRetake$2;
.super Ljava/lang/Thread;
.source "PasswrodRetake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/PasswrodRetake;->authen()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v1, v1, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v2, v2, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_findPassword2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v0, v0, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v0, v0, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v0, v0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$2;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    iget-object v0, v0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
