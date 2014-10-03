.class Lcom/ghost/xianyu/OrderConfirm$1;
.super Landroid/os/Handler;
.source "OrderConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/OrderConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderConfirm;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$0(Lcom/ghost/xianyu/OrderConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 58
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    const-string v1, "\u90e8\u5206\u8ba2\u5355\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u63d0\u4ea4"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #calls: Lcom/ghost/xianyu/OrderConfirm;->initLayout()V
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$1(Lcom/ghost/xianyu/OrderConfirm;)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$0(Lcom/ghost/xianyu/OrderConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 63
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    const-string v1, "\u63d0\u4ea4\u8ba2\u5355\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$1;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    invoke-virtual {v0}, Lcom/ghost/xianyu/OrderConfirm;->finish()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
