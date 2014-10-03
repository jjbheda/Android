.class Lcom/ghost/xianyu/Home$3;
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    .line 380
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    invoke-virtual {v0}, Lcom/ghost/xianyu/Home;->createUpdateDialog()V

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$3(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    invoke-virtual {v0}, Lcom/ghost/xianyu/Home;->installApk()V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$3(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 394
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 397
    :pswitch_3
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$3(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u6ca1\u6709\u627e\u5230SD\u5361"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :pswitch_5
    iget-object v0, p0, Lcom/ghost/xianyu/Home$3;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "\u53d6\u6d88\u66f4\u65b0"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
