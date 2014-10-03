.class public Lcom/ghost/xianyu/util/Skus;
.super Ljava/lang/Object;
.source "Skus.java"


# instance fields
.field public price:Ljava/lang/String;

.field public promo_price:Ljava/lang/String;

.field public properties:Ljava/lang/String;

.field public quantity:J

.field public sku_id:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sku_id"
    .parameter "quantity"
    .parameter "price"
    .parameter "properties"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/ghost/xianyu/util/Skus;->sku_id:J

    .line 12
    iput-wide p3, p0, Lcom/ghost/xianyu/util/Skus;->quantity:J

    .line 13
    iput-object p5, p0, Lcom/ghost/xianyu/util/Skus;->price:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/ghost/xianyu/util/Skus;->properties:Ljava/lang/String;

    .line 15
    const-string v0, "0"

    iput-object v0, p0, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;

    .line 16
    return-void
.end method
