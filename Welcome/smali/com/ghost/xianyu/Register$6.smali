.class Lcom/ghost/xianyu/Register$6;
.super Ljava/lang/Thread;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Register;->authen()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    .line 422
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 427
    iget-object v7, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v2, v2, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v3, v3, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    iget-object v4, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v4, v4, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget v6, v6, Lcom/ghost/xianyu/Register;->collegeId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    iget-object v6, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v6, v6, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    .line 427
    invoke-static/range {v0 .. v6}, Lcom/ghost/xianyu/internet/HttpConnection;->post_register2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register$6;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
