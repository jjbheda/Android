.class public Lcom/ghost/xianyu/OrderQuery;
.super Landroid/app/Activity;
.source "OrderQuery.java"

# interfaces
.implements Lcom/ghost/xianyu/view/MyListView$MyListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/OrderQuery$QueryAdapter;,
        Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    }
.end annotation


# static fields
.field static final tag:Ljava/lang/String; = "OrderQuery"


# instance fields
.field private backImgV:Landroid/widget/ImageView;

.field private current_page:I

.field private hasMore:Z

.field private isClick:Z

.field private isFirst:Z

.field private isFirstOther:Z

.field private isRefresh:Z

.field private isSelectTaobao:Z

.field private mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

.field private mDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;

.field private mListView:Lcom/ghost/xianyu/view/MyListView;

.field orderInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private otherLayout:Landroid/widget/RelativeLayout;

.field otherOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private queryStepImgV:Landroid/widget/ImageView;

.field private taobaoLayout:Landroid/widget/RelativeLayout;

.field taobaoOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/OrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->hasMore:Z

    .line 53
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->isFirst:Z

    .line 54
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->isFirstOther:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isClick:Z

    .line 56
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z

    .line 57
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    .line 58
    iput v1, p0, Lcom/ghost/xianyu/OrderQuery;->current_page:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/ghost/xianyu/OrderQuery$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/OrderQuery$1;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/OrderQuery;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isFirst:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/OrderQuery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/ghost/xianyu/OrderQuery;->isFirst:Z

    return-void
.end method

.method static synthetic access$10(Lcom/ghost/xianyu/OrderQuery;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/OrderQuery;->showExpressInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/OrderQuery;->showOptions(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/OrderQuery;->showOtherOptions(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/ghost/xianyu/OrderQuery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    return-void
.end method

.method static synthetic access$14(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->otherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ghost/xianyu/OrderQuery;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isFirstOther:Z

    return v0
.end method

.method static synthetic access$17(Lcom/ghost/xianyu/OrderQuery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ghost/xianyu/OrderQuery;->isFirstOther:Z

    return-void
.end method

.method static synthetic access$18(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/ghost/xianyu/OrderQuery;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/ghost/xianyu/OrderQuery;->current_page:I

    return v0
.end method

.method static synthetic access$2(Lcom/ghost/xianyu/OrderQuery;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z

    return v0
.end method

.method static synthetic access$20(Lcom/ghost/xianyu/OrderQuery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/ghost/xianyu/OrderQuery;->hasMore:Z

    return-void
.end method

.method static synthetic access$21(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/ghost/xianyu/OrderQuery;->current_page:I

    return-void
.end method

.method static synthetic access$22(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderQuery;->mergerSameTrade()V

    return-void
.end method

.method static synthetic access$23(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/OrderQuery;->getExpressInfo(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/OrderQuery;->cancelOrder(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ghost/xianyu/OrderQuery;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isClick:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ghost/xianyu/OrderQuery;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ghost/xianyu/OrderQuery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/ghost/xianyu/OrderQuery;->isClick:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ghost/xianyu/OrderQuery;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    return v0
.end method

.method static synthetic access$8(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/OrderQuery$QueryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderQuery;->dataChanged()V

    return-void
.end method

.method private cancelOrder(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 422
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$11;

    invoke-direct {v1, p0, p1}, Lcom/ghost/xianyu/OrderQuery$11;-><init>(Lcom/ghost/xianyu/OrderQuery;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private dataChanged()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    invoke-virtual {v0}, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->notifyDataSetChanged()V

    .line 481
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getExpressInfo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderQuery;->showDialog()V

    .line 394
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$10;

    invoke-direct {v1, p0, p1}, Lcom/ghost/xianyu/OrderQuery$10;-><init>(Lcom/ghost/xianyu/OrderQuery;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private mergerSameTrade()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 446
    iget-boolean v3, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    if-eqz v3, :cond_5

    .line 447
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    .line 448
    .local v2, tmp:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, j:I
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, l:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 472
    :cond_0
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 450
    :cond_2
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    .line 448
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_3
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    if-nez v3, :cond_4

    .line 453
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iput v6, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    .line 456
    :cond_4
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v4, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ghost/xianyu/util/OrderInfo;

    iget v4, v4, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    goto :goto_1

    .line 460
    .end local v0           #j:I
    .end local v1           #l:I
    .end local v2           #tmp:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    .line 461
    .restart local v2       #tmp:Ljava/lang/String;
    const/4 v0, 0x1

    .restart local v0       #j:I
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1       #l:I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 462
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 463
    :cond_6
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, v3, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    .line 461
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 465
    :cond_7
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget v3, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    if-nez v3, :cond_8

    .line 466
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iput v6, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    .line 468
    :cond_8
    iget-object v3, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v4, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ghost/xianyu/util/OrderInfo;

    iget v4, v4, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    goto :goto_3
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d......"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 230
    return-void
.end method

.method private showExpressInfo(Ljava/lang/String;)V
    .locals 7
    .parameter "str"

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 411
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 412
    .local v2, view:Landroid/view/View;
    const v4, 0x7f09007c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 413
    .local v3, webView:Landroid/webkit/WebView;
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 414
    const-string v4, "text/html;charset=UTF-8"

    invoke-virtual {v3, p1, v4, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const-string v4, "\u7269\u6d41\u4fe1\u606f"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void
.end method

.method private showOptions(I)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 337
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u67e5\u770b\u7269\u6d41"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u53d6\u6d88\u8ba2\u5355"

    aput-object v3, v1, v2

    .line 338
    .local v1, items:[Ljava/lang/CharSequence;
    const-string v2, "OrderQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pos = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/ghost/xianyu/OrderQuery$8;

    invoke-direct {v2, p0, p1}, Lcom/ghost/xianyu/OrderQuery$8;-><init>(Lcom/ghost/xianyu/OrderQuery;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    return-void
.end method

.method private showOtherOptions(I)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 365
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u53d6\u6d88\u8ba2\u5355"

    aput-object v3, v1, v2

    .line 366
    .local v1, items:[Ljava/lang/CharSequence;
    const-string v2, "OrderQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pos = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/ghost/xianyu/OrderQuery$9;

    invoke-direct {v2, p0, p1}, Lcom/ghost/xianyu/OrderQuery$9;-><init>(Lcom/ghost/xianyu/OrderQuery;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 384
    return-void
.end method


# virtual methods
.method public firstLoading()V
    .locals 2

    .prologue
    .line 214
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderQuery;->showDialog()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z

    .line 222
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderQuery;->queryOrder()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/ghost/xianyu/OrderQuery;->requestWindowFeature(I)Z

    .line 130
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->setContentView(I)V

    .line 132
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/view/MyListView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;

    .line 133
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoLayout:Landroid/widget/RelativeLayout;

    .line 134
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->otherLayout:Landroid/widget/RelativeLayout;

    .line 135
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->backImgV:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;

    .line 138
    new-instance v0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;-><init>(Lcom/ghost/xianyu/OrderQuery;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    .line 139
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/MyListView;->setPullLoadEnable(Z)V

    .line 140
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;

    invoke-virtual {v0, p0}, Lcom/ghost/xianyu/view/MyListView;->setMyListViewListener(Lcom/ghost/xianyu/view/MyListView$MyListViewListener;)V

    .line 141
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$2;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$2;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$3;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$3;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->otherLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$4;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$4;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->backImgV:Landroid/widget/ImageView;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$5;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$5;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$6;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$6;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderQuery;->firstLoading()V

    goto :goto_0
.end method

.method public onLoadMore()V
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->hasMore:Z

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 606
    :goto_0
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z

    .line 600
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderQuery;->queryOrder()V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 575
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z

    .line 576
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 586
    :goto_1
    iput v1, p0, Lcom/ghost/xianyu/OrderQuery;->current_page:I

    .line 587
    iput-boolean v1, p0, Lcom/ghost/xianyu/OrderQuery;->hasMore:Z

    .line 588
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderQuery;->queryOrder()V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public queryOrder()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ghost/xianyu/OrderQuery$7;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderQuery$7;-><init>(Lcom/ghost/xianyu/OrderQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    return-void
.end method
