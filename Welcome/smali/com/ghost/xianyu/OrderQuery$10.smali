.class Lcom/ghost/xianyu/OrderQuery$10;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->getExpressInfo(I)V
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
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$10;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iput p2, p0, Lcom/ghost/xianyu/OrderQuery$10;->val$pos:I

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 398
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$10;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ghost/xianyu/OrderQuery$10;->val$pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v3, v2, Lcom/ghost/xianyu/util/OrderInfo;->express_id:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$10;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/ghost/xianyu/OrderQuery$10;->val$pos:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v2, Lcom/ghost/xianyu/util/OrderInfo;->express_company:Ljava/lang/String;

    .line 398
    invoke-static {v3, v2}, Lcom/ghost/xianyu/internet/HttpConnection;->post_queryExpress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, response:Ljava/lang/String;
    const-string v2, "OrderQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 403
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$10;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    return-void
.end method
