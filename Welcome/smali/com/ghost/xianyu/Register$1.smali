.class Lcom/ghost/xianyu/Register$1;
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
    iput-object p1, p0, Lcom/ghost/xianyu/Register$1;->this$0:Lcom/ghost/xianyu/Register;

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register$1;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghost/xianyu/Register$1;->this$0:Lcom/ghost/xianyu/Register;

    iget v2, v2, Lcom/ghost/xianyu/Register;->timeCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u79d2\u540e\u53ef\u4ee5\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/ghost/xianyu/Register$1;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    const-string v1, "\u514d\u8d39\u83b7\u53d6\u77ed\u4fe1\u6fc0\u6d3b\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/ghost/xianyu/Register$1;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
