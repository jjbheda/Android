.class Lcom/ghost/xianyu/OrderConfirm$6;
.super Ljava/lang/Object;
.source "OrderConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderConfirm;->submitToServer()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 212
    sget-boolean v7, Lcom/ghost/xianyu/OrderConfirm;->isFromCart:Z

    if-nez v7, :cond_3

    .line 214
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    iget-object v5, v7, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    .line 215
    .local v5, store:Ljava/lang/String;
    const-string v7, "taobao"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "tmall"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    :cond_0
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    invoke-static {v7}, Lcom/ghost/xianyu/internet/HttpConnection;->post_orderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, response:Ljava/lang/String;
    :goto_0
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    iget-object v7, v7, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #store:Ljava/lang/String;
    :goto_1
    return-void

    .line 218
    .restart local v5       #store:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    invoke-static {v7}, Lcom/ghost/xianyu/internet/HttpConnection;->post_otherOrderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #response:Ljava/lang/String;
    goto :goto_0

    .line 224
    :cond_2
    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    iget-object v7, v7, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 229
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #store:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v6, successOrderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ghost/xianyu/util/Shopping;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_5

    .line 246
    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    sget v8, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-static {v7, v8}, Lcom/ghost/xianyu/util/MyPreference;->setCartNum(Landroid/content/Context;I)V

    .line 248
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 249
    new-instance v0, Lcom/ghost/xianyu/util/DbHelper;

    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    invoke-direct {v0, v7}, Lcom/ghost/xianyu/util/DbHelper;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, helper:Lcom/ghost/xianyu/util/DbHelper;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, l:I
    :goto_3
    if-lt v1, v3, :cond_9

    .line 254
    invoke-virtual {v0, v2}, Lcom/ghost/xianyu/util/DbHelper;->deleteShopping(Ljava/util/List;)Z

    .line 257
    .end local v0           #helper:Lcom/ghost/xianyu/util/DbHelper;
    .end local v2           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #l:I
    :cond_4
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 258
    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    iget-object v7, v7, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 232
    :cond_5
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    iget-object v5, v7, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    .line 233
    .restart local v5       #store:Ljava/lang/String;
    const-string v7, "taobao"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "tmall"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 234
    :cond_6
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    invoke-static {v7}, Lcom/ghost/xianyu/internet/HttpConnection;->post_orderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .restart local v4       #response:Ljava/lang/String;
    :goto_4
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 240
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    sget v7, Lcom/ghost/xianyu/Home;->cartNum:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/ghost/xianyu/Home;->cartNum:I

    .line 230
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 236
    .end local v4           #response:Ljava/lang/String;
    :cond_8
    sget-object v7, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    invoke-static {v7}, Lcom/ghost/xianyu/internet/HttpConnection;->post_otherOrderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #response:Ljava/lang/String;
    goto :goto_4

    .line 252
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #store:Ljava/lang/String;
    .restart local v0       #helper:Lcom/ghost/xianyu/util/DbHelper;
    .restart local v2       #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3       #l:I
    :cond_9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ghost/xianyu/util/Shopping;

    iget v7, v7, Lcom/ghost/xianyu/util/Shopping;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 260
    .end local v0           #helper:Lcom/ghost/xianyu/util/DbHelper;
    .end local v2           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #l:I
    :cond_a
    iget-object v7, p0, Lcom/ghost/xianyu/OrderConfirm$6;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    iget-object v7, v7, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
