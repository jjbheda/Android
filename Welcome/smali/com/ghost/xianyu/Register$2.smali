.class Lcom/ghost/xianyu/Register$2;
.super Landroid/os/Handler;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Register;
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
    iput-object p1, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    .line 393
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 396
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u5df2\u53d1\u9001\u77ed\u4fe1\u6fc0\u6d3b\u7801"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    invoke-virtual {v0}, Lcom/ghost/xianyu/Register;->finish()V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u8be5\u624b\u673a\u53f7\u5df2\u7ecf\u88ab\u6ce8\u518c,\u8bf7\u91cd\u65b0\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u6ce8\u518c\u5931\u8d25\uff0c\u7f51\u7edc\u53d1\u751f\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :pswitch_4
    iget-object v0, p0, Lcom/ghost/xianyu/Register$2;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
