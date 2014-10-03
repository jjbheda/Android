.class public Lcom/ghost/xianyu/util/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# instance fields
.field public express_company:Ljava/lang/String;

.field public express_id:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public pic_url:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public promo_price:Ljava/lang/String;

.field public props_str:Ljava/lang/String;

.field public quantity:Ljava/lang/String;

.field public sequence:I

.field public status:Ljava/lang/String;

.field public status_caption:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public total_price:Ljava/lang/String;

.field public trade_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "trade_id"
    .parameter "status"
    .parameter "nick"
    .parameter "title"
    .parameter "pic_url"
    .parameter "props_str"
    .parameter "quantity"
    .parameter "price"
    .parameter "promo_price"
    .parameter "total_price"
    .parameter "status_caption"
    .parameter "message"
    .parameter "express_id"
    .parameter "express_company"
    .parameter "sequence"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ghost/xianyu/util/OrderInfo;->id:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/ghost/xianyu/util/OrderInfo;->trade_id:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/ghost/xianyu/util/OrderInfo;->status:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/ghost/xianyu/util/OrderInfo;->nick:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ghost/xianyu/util/OrderInfo;->title:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/ghost/xianyu/util/OrderInfo;->pic_url:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/ghost/xianyu/util/OrderInfo;->props_str:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/ghost/xianyu/util/OrderInfo;->quantity:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/ghost/xianyu/util/OrderInfo;->price:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/ghost/xianyu/util/OrderInfo;->promo_price:Ljava/lang/String;

    .line 35
    iput-object p11, p0, Lcom/ghost/xianyu/util/OrderInfo;->total_price:Ljava/lang/String;

    .line 36
    iput-object p12, p0, Lcom/ghost/xianyu/util/OrderInfo;->status_caption:Ljava/lang/String;

    .line 37
    iput-object p13, p0, Lcom/ghost/xianyu/util/OrderInfo;->message:Ljava/lang/String;

    .line 38
    iput-object p14, p0, Lcom/ghost/xianyu/util/OrderInfo;->express_id:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/ghost/xianyu/util/OrderInfo;->express_company:Ljava/lang/String;

    .line 40
    move/from16 v0, p16

    iput v0, p0, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    .line 41
    return-void
.end method
