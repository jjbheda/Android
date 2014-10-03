.class Lcom/ghost/xianyu/Welcome$1;
.super Landroid/os/Handler;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Welcome;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Welcome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    iget-boolean v2, v2, Lcom/ghost/xianyu/Welcome;->isFirst:Z

    if-nez v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    iget-object v2, v2, Lcom/ghost/xianyu/Welcome;->pref:Landroid/content/SharedPreferences;

    const-string v3, "isLogin"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    .local v1, isLogin:Z
    if-nez v1, :cond_0

    .line 29
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    const-class v5, Lcom/ghost/xianyu/Login;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v1           #isLogin:Z
    :goto_0
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    invoke-virtual {v2}, Lcom/ghost/xianyu/Welcome;->finish()V

    .line 42
    return-void

    .line 32
    .restart local v1       #isLogin:Z
    :cond_0
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    const-class v5, Lcom/ghost/xianyu/Home;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/Welcome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    .end local v1           #isLogin:Z
    :cond_1
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    iget-object v2, v2, Lcom/ghost/xianyu/Welcome;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isFirst"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    iget-object v2, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ghost/xianyu/Welcome$1;->this$0:Lcom/ghost/xianyu/Welcome;

    const-class v5, Lcom/ghost/xianyu/GuidePage;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/Welcome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
