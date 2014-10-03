.class Lcom/ghost/xianyu/Home$8;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Home;->downloadApk(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$8;->this$0:Lcom/ghost/xianyu/Home;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ghost/xianyu/Home$8;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->downloadApkFile:Lcom/ghost/xianyu/util/DownloadApkFile;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$6(Lcom/ghost/xianyu/Home;)Lcom/ghost/xianyu/util/DownloadApkFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghost/xianyu/util/DownloadApkFile;->cancel()V

    .line 442
    iget-object v0, p0, Lcom/ghost/xianyu/Home$8;->this$0:Lcom/ghost/xianyu/Home;

    #getter for: Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$5(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 444
    return-void
.end method
