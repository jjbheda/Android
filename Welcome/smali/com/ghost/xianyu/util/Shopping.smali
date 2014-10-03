.class public Lcom/ghost/xianyu/util/Shopping;
.super Ljava/lang/Object;
.source "Shopping.java"


# instance fields
.field public detail_url:Ljava/lang/String;

.field public id:I

.field public isCheck:Z

.field public message:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public num_iid:Ljava/lang/String;

.field public pic_url:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public promo_price:Ljava/lang/String;

.field public promo_type:Ljava/lang/String;

.field public props_alias:Ljava/lang/String;

.field public props_str:Ljava/lang/String;

.field public quantity:Ljava/lang/String;

.field public sku_id:Ljava/lang/String;

.field public store:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "num_iid"
    .parameter "detail_url"
    .parameter "store"
    .parameter "title"
    .parameter "pic_url"
    .parameter "price"
    .parameter "promo_price"
    .parameter "nick"
    .parameter "sku_id"
    .parameter "quantity"
    .parameter "props_str"
    .parameter "promo_type"
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/ghost/xianyu/util/Shopping;->id:I

    .line 25
    iput-object p2, p0, Lcom/ghost/xianyu/util/Shopping;->num_iid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/ghost/xianyu/util/Shopping;->detail_url:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/ghost/xianyu/util/Shopping;->sku_id:Ljava/lang/String;

    .line 34
    iput-object p11, p0, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    .line 35
    iput-object p12, p0, Lcom/ghost/xianyu/util/Shopping;->props_str:Ljava/lang/String;

    .line 36
    iput-object p12, p0, Lcom/ghost/xianyu/util/Shopping;->props_alias:Ljava/lang/String;

    .line 37
    iput-object p13, p0, Lcom/ghost/xianyu/util/Shopping;->promo_type:Ljava/lang/String;

    .line 38
    iput-object p14, p0, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    .line 39
    return-void
.end method
