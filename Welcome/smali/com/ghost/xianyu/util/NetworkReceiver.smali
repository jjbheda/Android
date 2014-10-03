.class public Lcom/ghost/xianyu/util/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkReceiver.java"


# static fields
.field public static isConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 20
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 25
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 27
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 28
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ghost/xianyu/util/NetworkReceiver;->isConnection:Z

    .line 29
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sput-boolean v3, Lcom/ghost/xianyu/util/NetworkReceiver;->isConnection:Z

    .line 32
    sget-object v2, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33
    sget-object v2, Lcom/ghost/xianyu/Home;->phoneNum:Ljava/lang/String;

    sget-object v3, Lcom/ghost/xianyu/Home;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ghost/xianyu/internet/HttpConnection;->post_login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
