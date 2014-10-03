.class Lcom/ghost/xianyu/Login$2;
.super Ljava/lang/Thread;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Login;->authen()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    .line 199
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v2, v2, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v3, v3, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ghost/xianyu/internet/HttpConnection;->post_login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, reponse:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v2, v2, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    .end local v1           #reponse:Ljava/lang/String;
    :goto_0
    return-void

    .line 206
    .restart local v1       #reponse:Ljava/lang/String;
    :cond_0
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v2, v2, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v1           #reponse:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v2, v2, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reponse:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ghost/xianyu/Login$2;->this$0:Lcom/ghost/xianyu/Login;

    iget-object v2, v2, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
