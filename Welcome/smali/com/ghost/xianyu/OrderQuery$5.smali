.class Lcom/ghost/xianyu/OrderQuery$5;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$5;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$5;->this$0:Lcom/ghost/xianyu/OrderQuery;

    invoke-virtual {v0}, Lcom/ghost/xianyu/OrderQuery;->finish()V

    .line 191
    return-void
.end method
