.class Lcom/ghost/xianyu/Login$1;
.super Landroid/os/Handler;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Login;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Login;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u8f93\u5165\u7684\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v0, v0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    invoke-virtual {v0}, Lcom/ghost/xianyu/Login;->saveUserInfo()V

    .line 74
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    invoke-virtual {v0}, Lcom/ghost/xianyu/Login;->jumpToMain()V

    goto :goto_0

    .line 77
    :pswitch_4
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v0, v0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :pswitch_5
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v0, v0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u4e0d\u6b63\u786e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v0, v0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/ghost/xianyu/Login$1;->this$0:Lcom/ghost/xianyu/Login;

    const-string v1, "\u60a8\u7684\u8d26\u53f7\u5df2\u7ecf\u88ab\u51bb\u7ed3\uff0c\u5982\u6709\u7591\u95ee\uff0c\u8bf7\u8054\u7cfb\u54b8\u9c7c\u7f51\u6240\u5728\u5927\u5b66\u5206\u5e97\u7ba1\u7406\u5458"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
