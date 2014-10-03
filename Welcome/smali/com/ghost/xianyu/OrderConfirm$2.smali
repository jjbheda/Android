.class Lcom/ghost/xianyu/OrderConfirm$2;
.super Ljava/lang/Object;
.source "OrderConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderConfirm;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderConfirm$2;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$2;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #calls: Lcom/ghost/xianyu/OrderConfirm;->submitToServer()V
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$2(Lcom/ghost/xianyu/OrderConfirm;)V

    .line 96
    return-void
.end method
