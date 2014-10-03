.class Lcom/ghost/xianyu/Register$5;
.super Ljava/lang/Thread;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Register;->sendMess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Register;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    .line 290
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v2, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v2, v2, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    invoke-static {v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_register1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/Register$5;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
