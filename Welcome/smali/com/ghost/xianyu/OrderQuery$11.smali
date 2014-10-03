.class Lcom/ghost/xianyu/OrderQuery$11;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->cancelOrder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$11;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iput p2, p0, Lcom/ghost/xianyu/OrderQuery$11;->val$pos:I

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 432
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$11;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v2}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$11;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ghost/xianyu/OrderQuery$11;->val$pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v2, Lcom/ghost/xianyu/util/OrderInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_cancelOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, response:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 438
    iget v2, p0, Lcom/ghost/xianyu/OrderQuery$11;->val$pos:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 439
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$11;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    return-void

    .line 435
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #response:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$11;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ghost/xianyu/OrderQuery$11;->val$pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v2, Lcom/ghost/xianyu/util/OrderInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_cancelOtherOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #response:Ljava/lang/String;
    goto :goto_0
.end method
