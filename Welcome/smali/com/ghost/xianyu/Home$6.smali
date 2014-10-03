.class Lcom/ghost/xianyu/Home$6;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Home;->createUpdateDialog()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$6;->this$0:Lcom/ghost/xianyu/Home;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 416
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 417
    iget-object v0, p0, Lcom/ghost/xianyu/Home$6;->this$0:Lcom/ghost/xianyu/Home;

    const-string v1, "http://www.xianyunet.com/downloads/XianYu.apk"

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/Home;->downloadApk(Ljava/lang/String;)V

    .line 418
    return-void
.end method
