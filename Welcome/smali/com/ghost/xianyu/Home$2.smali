.class Lcom/ghost/xianyu/Home$2;
.super Landroid/os/Handler;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Home;
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    .line 336
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u8bf7\u9009\u62e9\u5546\u54c1"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->loadPd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$2(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 348
    iget-object v0, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ghost/xianyu/Home$2;->this$0:Lcom/ghost/xianyu/Home;

    const-class v3, Lcom/ghost/xianyu/OrderSelect;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
