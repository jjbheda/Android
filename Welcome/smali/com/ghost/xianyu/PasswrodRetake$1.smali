.class Lcom/ghost/xianyu/PasswrodRetake$1;
.super Landroid/os/Handler;
.source "PasswrodRetake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/PasswrodRetake;
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
    iput-object p1, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    #getter for: Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/PasswrodRetake;->access$0(Lcom/ghost/xianyu/PasswrodRetake;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    const-string v1, "\u5df2\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    #calls: Lcom/ghost/xianyu/PasswrodRetake;->jumpToNext()V
    invoke-static {v0}, Lcom/ghost/xianyu/PasswrodRetake;->access$1(Lcom/ghost/xianyu/PasswrodRetake;)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    const-string v1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    invoke-virtual {v0}, Lcom/ghost/xianyu/PasswrodRetake;->finish()V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_4
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake$1;->this$0:Lcom/ghost/xianyu/PasswrodRetake;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
