.class public Lcom/ghost/xianyu/OrderSelect;
.super Landroid/app/Activity;
.source "OrderSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "OrderSelect"


# instance fields
.field private addCartBtn:Landroid/widget/Button;

.field private backImgV:Landroid/widget/ImageView;

.field private count:I

.field private freightTv:Landroid/widget/TextView;

.field private goodsLinkEt:Landroid/widget/EditText;

.field private goodsNumEt:Landroid/widget/EditText;

.field private goodsPatternEt:Landroid/widget/EditText;

.field private goodsPriceEt:Landroid/widget/EditText;

.field private goodsTitleEt:Landroid/widget/EditText;

.field private inventoryTv:Landroid/widget/TextView;

.field private isDestroy:Ljava/lang/Boolean;

.field private mSkusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Skus;",
            ">;"
        }
    .end annotation
.end field

.field private messageEt:Landroid/widget/EditText;

.field private otherImgV:Lcom/ghost/xianyu/view/NetImageView;

.field private otherTitleLayout:Landroid/widget/LinearLayout;

.field private otherView:Landroid/widget/ScrollView;

.field private payBtn:Landroid/widget/Button;

.field private picImgV:Lcom/ghost/xianyu/view/NetImageView;

.field private price:Ljava/lang/String;

.field private priceTv:Landroid/widget/TextView;

.field private promo_price:Ljava/lang/String;

.field private propLayout:Landroid/widget/LinearLayout;

.field private props_str:Ljava/lang/String;

.field private proptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Property;",
            ">;"
        }
    .end annotation
.end field

.field private quantityEt:Landroid/widget/EditText;

.field private selectBottomLayout:Landroid/widget/LinearLayout;

.field private sku_id:J

.field private sku_quantity:J

.field private taobaoView:Landroid/widget/ScrollView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ghost/xianyu/OrderSelect;->sku_id:J

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    .line 71
    iput v2, p0, Lcom/ghost/xianyu/OrderSelect;->count:I

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->isDestroy:Ljava/lang/Boolean;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/OrderSelect;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/OrderSelect;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/ghost/xianyu/OrderSelect;->count:I

    return v0
.end method

.method static synthetic access$2(Lcom/ghost/xianyu/OrderSelect;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/ghost/xianyu/OrderSelect;->count:I

    return-void
.end method

.method static synthetic access$3(Lcom/ghost/xianyu/OrderSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->getPropStr()V

    return-void
.end method

.method private getPropStr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 409
    const-string v2, ""

    .line 411
    .local v2, props_value:Ljava/lang/String;
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 412
    .local v1, length:I
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 414
    .local v4, sku_length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 429
    if-nez v4, :cond_3

    .line 430
    sget-object v5, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    sget-object v5, Lcom/ghost/xianyu/Home;->price:Ljava/lang/String;

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    .line 432
    const-string v5, "0"

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    .line 466
    :goto_1
    iget-object v6, p0, Lcom/ghost/xianyu/OrderSelect;->priceTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    return-void

    .line 415
    :cond_0
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    .line 417
    .local v3, propty:Lcom/ghost/xianyu/util/Property;
    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_1

    .line 418
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    iget v7, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/PropValue;

    iget-object v5, v5, Lcom/ghost/xianyu/util/PropValue;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    iget v7, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/PropValue;

    iget-object v5, v5, Lcom/ghost/xianyu/util/PropValue;->code:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 421
    :cond_1
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    iget v7, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/PropValue;

    iget-object v5, v5, Lcom/ghost/xianyu/util/PropValue;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&nbsp;&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    iget v7, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/PropValue;

    iget-object v5, v5, Lcom/ghost/xianyu/util/PropValue;->code:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 434
    .end local v3           #propty:Lcom/ghost/xianyu/util/Property;
    :cond_2
    const-string v5, "0"

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    .line 435
    sget-object v5, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    goto/16 :goto_1

    .line 439
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v4, :cond_4

    .line 455
    :goto_5
    if-ne v0, v4, :cond_7

    .line 456
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->inventoryTv:Landroid/widget/TextView;

    const-string v6, "(\u5e93\u5b58: 0)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->addCartBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 458
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->payBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 440
    :cond_4
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-object v5, v5, Lcom/ghost/xianyu/util/Skus;->properties:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 441
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-wide v5, v5, Lcom/ghost/xianyu/util/Skus;->sku_id:J

    iput-wide v5, p0, Lcom/ghost/xianyu/OrderSelect;->sku_id:J

    .line 442
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-wide v5, v5, Lcom/ghost/xianyu/util/Skus;->quantity:J

    iput-wide v5, p0, Lcom/ghost/xianyu/OrderSelect;->sku_quantity:J

    .line 444
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-object v5, v5, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 445
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-object v5, v5, Lcom/ghost/xianyu/util/Skus;->price:Ljava/lang/String;

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    .line 446
    const-string v5, "0"

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    goto :goto_5

    .line 448
    :cond_5
    const-string v5, "0"

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    .line 449
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghost/xianyu/util/Skus;

    iget-object v5, v5, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;

    iput-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    goto :goto_5

    .line 439
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 460
    :cond_7
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->inventoryTv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(\u5e93\u5b58: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/ghost/xianyu/OrderSelect;->sku_quantity:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->addCartBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->payBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 466
    :cond_8
    iget-object v5, p0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private getShopping()Lcom/ghost/xianyu/util/Shopping;
    .locals 35

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, shopping:Lcom/ghost/xianyu/util/Shopping;
    sget-object v3, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->goodsPatternEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 474
    .local v14, props_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->goodsNumEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, quantity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->goodsPriceEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, price:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->messageEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v16

    .line 478
    .local v16, message:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    :cond_0
    const-string v3, "\u8bf7\u8f93\u5165\u5546\u54c1\u4ef7\u683c"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 480
    const/4 v3, 0x0

    .line 549
    .end local v9           #price:Ljava/lang/String;
    .end local v14           #props_str:Ljava/lang/String;
    .end local v16           #message:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 483
    .restart local v9       #price:Ljava/lang/String;
    .restart local v14       #props_str:Ljava/lang/String;
    .restart local v16       #message:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 484
    :cond_2
    const-string v3, "\u8bf7\u8f93\u5165\u8d2d\u4e70\u6570\u91cf"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 485
    const/4 v3, 0x0

    goto :goto_0

    .line 488
    :cond_3
    const-string v4, ""

    .line 489
    .local v4, num_iid:Ljava/lang/String;
    sget-object v5, Lcom/ghost/xianyu/Home;->otherUrl:Ljava/lang/String;

    .line 490
    .local v5, detail_url:Ljava/lang/String;
    sget-object v6, Lcom/ghost/xianyu/Home;->otherStore:Ljava/lang/String;

    .line 491
    .local v6, store:Ljava/lang/String;
    sget-object v7, Lcom/ghost/xianyu/Home;->otherTitle:Ljava/lang/String;

    .line 492
    .local v7, title:Ljava/lang/String;
    const-string v8, ""

    .line 493
    .local v8, pic_url:Ljava/lang/String;
    const-string v10, "0"

    .line 494
    .local v10, promo_price:Ljava/lang/String;
    const-string v11, ""

    .line 495
    .local v11, nick:Ljava/lang/String;
    const-string v12, ""

    .line 496
    .local v12, sku_id:Ljava/lang/String;
    const-string v15, ""

    .line 498
    .local v15, promo_type:Ljava/lang/String;
    new-instance v2, Lcom/ghost/xianyu/util/Shopping;

    .end local v2           #shopping:Lcom/ghost/xianyu/util/Shopping;
    const/4 v3, -0x1

    invoke-direct/range {v2 .. v16}, Lcom/ghost/xianyu/util/Shopping;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #num_iid:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v6           #store:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #pic_url:Ljava/lang/String;
    .end local v9           #price:Ljava/lang/String;
    .end local v10           #promo_price:Ljava/lang/String;
    .end local v11           #nick:Ljava/lang/String;
    .end local v12           #sku_id:Ljava/lang/String;
    .end local v14           #props_str:Ljava/lang/String;
    .end local v15           #promo_type:Ljava/lang/String;
    .end local v16           #message:Ljava/lang/String;
    .restart local v2       #shopping:Lcom/ghost/xianyu/util/Shopping;
    :goto_1
    move-object v3, v2

    .line 549
    goto :goto_0

    .line 501
    .end local v13           #quantity:Ljava/lang/String;
    :cond_4
    const-string v13, ""

    .line 503
    .restart local v13       #quantity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 504
    .local v33, length:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ghost/xianyu/OrderSelect;->count:I

    if-lez v3, :cond_5

    if-lez v33, :cond_5

    .line 505
    const/16 v32, 0x0

    .local v32, i:I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 512
    .end local v32           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->quantityEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v34

    .line 516
    .local v34, quantityTmp:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 517
    const-string v3, "\u8bf7\u9009\u62e9\u8d2d\u4e70\u6570\u91cf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ghost/xianyu/OrderSelect;->showToast(Ljava/lang/String;)V

    .line 518
    const/4 v3, 0x0

    goto :goto_0

    .line 506
    .end local v34           #quantityTmp:Ljava/lang/String;
    .restart local v32       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    iget v3, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_7

    .line 507
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u9009\u62e9"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    iget-object v3, v3, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ghost/xianyu/OrderSelect;->showToast(Ljava/lang/String;)V

    .line 508
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 505
    :cond_7
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 520
    .end local v32           #i:I
    .restart local v34       #quantityTmp:Ljava/lang/String;
    :cond_8
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ghost/xianyu/OrderSelect;->sku_quantity:J

    move-wide/from16 v19, v0

    cmp-long v3, v17, v19

    if-lez v3, :cond_9

    .line 521
    const-string v3, "\u8d2d\u4e70\u6570\u91cf\u5df2\u7ecf\u8d85\u8fc7\u5e93\u5b58\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ghost/xianyu/OrderSelect;->showToast(Ljava/lang/String;)V

    .line 522
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 524
    :cond_9
    move-object/from16 v13, v34

    .line 528
    const-string v27, ""

    .line 529
    .local v27, sku_id_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ghost/xianyu/OrderSelect;->sku_id:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v3, v17, v19

    if-eqz v3, :cond_a

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ghost/xianyu/OrderSelect;->sku_id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 546
    :cond_a
    new-instance v2, Lcom/ghost/xianyu/util/Shopping;

    .end local v2           #shopping:Lcom/ghost/xianyu/util/Shopping;
    const/16 v18, -0x1

    sget-object v19, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    sget-object v20, Lcom/ghost/xianyu/Home;->detail_url:Ljava/lang/String;

    sget-object v21, Lcom/ghost/xianyu/Home;->store:Ljava/lang/String;

    sget-object v22, Lcom/ghost/xianyu/Home;->title:Ljava/lang/String;

    sget-object v23, Lcom/ghost/xianyu/Home;->pic_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/ghost/xianyu/Home;->nick:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->props_str:Ljava/lang/String;

    move-object/from16 v29, v0

    sget-object v30, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    const-string v31, ""

    move-object/from16 v17, v2

    move-object/from16 v28, v13

    .line 546
    invoke-direct/range {v17 .. v31}, Lcom/ghost/xianyu/util/Shopping;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #shopping:Lcom/ghost/xianyu/util/Shopping;
    goto/16 :goto_1
.end method

.method private onOrderConfirm()V
    .locals 3

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->getShopping()Lcom/ghost/xianyu/util/Shopping;

    move-result-object v0

    .line 357
    .local v0, shopping:Lcom/ghost/xianyu/util/Shopping;
    if-eqz v0, :cond_0

    .line 358
    sget-object v1, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    sget-object v1, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ghost/xianyu/OrderConfirm;->isFromCart:Z

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ghost/xianyu/OrderConfirm;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/ghost/xianyu/OrderSelect;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderSelect;->finish()V

    .line 364
    :cond_0
    return-void
.end method

.method private showOtherView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->taobaoView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherImgV:Lcom/ghost/xianyu/view/NetImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.xianyunet.com/misc/user/img/logo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ghost/xianyu/Home;->otherStore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/NetImageView;->setImageUrl(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsLinkEt:Landroid/widget/EditText;

    sget-object v1, Lcom/ghost/xianyu/Home;->otherUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsTitleEt:Landroid/widget/EditText;

    sget-object v1, Lcom/ghost/xianyu/Home;->otherTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method private showTaobaoView()V
    .locals 35

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->otherView:Landroid/widget/ScrollView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->otherTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->taobaoView:Landroid/widget/ScrollView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->picImgV:Lcom/ghost/xianyu/view/NetImageView;

    move-object/from16 v31, v0

    sget-object v32, Lcom/ghost/xianyu/Home;->pic_url:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Lcom/ghost/xianyu/view/NetImageView;->setImageUrl(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->titleTv:Landroid/widget/TextView;

    move-object/from16 v31, v0

    sget-object v32, Lcom/ghost/xianyu/Home;->title:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->inventoryTv:Landroid/widget/TextView;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "(\u5e93\u5b58: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/ghost/xianyu/Home;->num:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v31, Lcom/ghost/xianyu/Home;->price:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ghost/xianyu/OrderSelect;->price:Ljava/lang/String;

    .line 145
    sget-object v31, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ghost/xianyu/OrderSelect;->promo_price:Ljava/lang/String;

    .line 146
    sget-object v31, Lcom/ghost/xianyu/Home;->num:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ghost/xianyu/OrderSelect;->sku_quantity:J

    .line 147
    const-string v25, ""

    .line 148
    .local v25, tmp:Ljava/lang/String;
    sget-object v31, Lcom/ghost/xianyu/Home;->freight_payer:Ljava/lang/String;

    const-string v32, "seller"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 149
    const-string v25, "\u5356\u5bb6\u5305\u90ae"

    .line 162
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->freightTv:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    .line 165
    const/4 v4, 0x0

    .local v4, i:I
    sget-object v31, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v22

    .local v22, s:I
    :goto_1
    move/from16 v0, v22

    if-lt v4, v0, :cond_6

    .line 179
    sget-object v31, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 184
    sget-object v31, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Skus;->price:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 186
    .local v13, min_price:D
    move-wide v11, v13

    .line 187
    .local v11, max_price:D
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v22

    :goto_2
    move/from16 v0, v22

    if-lt v4, v0, :cond_8

    .line 207
    :cond_1
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "\uffe5"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 208
    .local v27, tmp_min:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "\uffe5"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 210
    .local v26, tmp_max:Ljava/lang/String;
    const-string v31, "."

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 212
    :cond_2
    const-string v31, "."

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 213
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 214
    :cond_3
    cmpl-double v31, v13, v11

    if-nez v31, :cond_e

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->priceTv:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .end local v11           #max_price:D
    .end local v13           #min_price:D
    .end local v26           #tmp_max:Ljava/lang/String;
    .end local v27           #tmp_min:Ljava/lang/String;
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v22

    :goto_4
    move/from16 v0, v22

    if-lt v4, v0, :cond_11

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 232
    .local v8, length:I
    if-lez v8, :cond_14

    .line 233
    move-object/from16 v0, p0

    iput v8, v0, Lcom/ghost/xianyu/OrderSelect;->count:I

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/OrderSelect;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v29

    .line 235
    .local v29, wm:Landroid/view/WindowManager;
    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getWidth()I

    move-result v23

    .line 236
    .local v23, screen_width:I
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x1

    .line 237
    const/16 v32, -0x2

    .line 236
    invoke-direct/range {v30 .. v32}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v30, wrap_lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v8, :cond_12

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->propLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    .end local v23           #screen_width:I
    .end local v29           #wm:Landroid/view/WindowManager;
    .end local v30           #wrap_lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_6
    return-void

    .line 151
    .end local v4           #i:I
    .end local v8           #length:I
    .end local v22           #s:I
    :cond_4
    sget-object v31, Lcom/ghost/xianyu/Home;->post_fee:Ljava/lang/String;

    const-string v32, "0.00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    sget-object v31, Lcom/ghost/xianyu/Home;->express_fee:Ljava/lang/String;

    const-string v32, "0.00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    sget-object v31, Lcom/ghost/xianyu/Home;->ems_fee:Ljava/lang/String;

    const-string v32, "0.00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 152
    const-string v25, "\u514d\u8fd0\u8d39"

    .line 153
    goto/16 :goto_0

    .line 154
    :cond_5
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "\u5feb\u9012: \uffe5"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/ghost/xianyu/Home;->express_fee:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 156
    sget-object v31, Lcom/ghost/xianyu/Home;->ems_fee:Ljava/lang/String;

    const-string v32, "0.00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 157
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "EMS: \uffe5"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/ghost/xianyu/Home;->ems_fee:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 168
    .restart local v4       #i:I
    .restart local v22       #s:I
    :cond_6
    new-instance v21, Lcom/ghost/xianyu/util/Property;

    sget-object v31, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_id:Ljava/lang/String;

    move-object/from16 v32, v0

    sget-object v31, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/ghost/xianyu/util/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v21, propty:Lcom/ghost/xianyu/util/Property;
    sget-object v31, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 170
    .local v19, prop_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ghost/xianyu/util/PropValue;>;"
    const/4 v6, 0x0

    .local v6, j:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, l:I
    :goto_7
    if-lt v6, v7, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 173
    :cond_7
    new-instance v28, Lcom/ghost/xianyu/util/PropValue;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/PropValue;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/PropValue;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/PropValue;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/PropValue;->code:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/ghost/xianyu/util/PropValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v28, value:Lcom/ghost/xianyu/util/PropValue;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 188
    .end local v6           #j:I
    .end local v7           #l:I
    .end local v19           #prop_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ghost/xianyu/util/PropValue;>;"
    .end local v21           #propty:Lcom/ghost/xianyu/util/Property;
    .end local v28           #value:Lcom/ghost/xianyu/util/PropValue;
    .restart local v11       #max_price:D
    .restart local v13       #min_price:D
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Skus;->price:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 189
    .local v15, price:D
    cmpg-double v31, v15, v13

    if-gez v31, :cond_a

    .line 190
    move-wide v13, v15

    .line 187
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 191
    :cond_a
    cmpl-double v31, v15, v11

    if-lez v31, :cond_9

    .line 192
    move-wide v11, v15

    goto :goto_8

    .line 196
    .end local v11           #max_price:D
    .end local v13           #min_price:D
    .end local v15           #price:D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 197
    .restart local v13       #min_price:D
    move-wide v11, v13

    .line 198
    .restart local v11       #max_price:D
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v22

    :goto_9
    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->mSkusList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 200
    .restart local v15       #price:D
    cmpg-double v31, v15, v13

    if-gez v31, :cond_d

    .line 201
    move-wide v13, v15

    .line 198
    :cond_c
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 202
    :cond_d
    cmpl-double v31, v15, v11

    if-lez v31, :cond_c

    .line 203
    move-wide v11, v15

    goto :goto_a

    .line 217
    .end local v15           #price:D
    .restart local v26       #tmp_max:Ljava/lang/String;
    .restart local v27       #tmp_min:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->priceTv:Landroid/widget/TextView;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " - "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 219
    .end local v11           #max_price:D
    .end local v13           #min_price:D
    .end local v26           #tmp_max:Ljava/lang/String;
    .end local v27           #tmp_min:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->priceTv:Landroid/widget/TextView;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v31, "\uffe5"

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    const-string v34, "0"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    sget-object v31, Lcom/ghost/xianyu/Home;->price:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_10
    sget-object v31, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    goto :goto_b

    .line 222
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 239
    .restart local v8       #length:I
    .restart local v23       #screen_width:I
    .restart local v29       #wm:Landroid/view/WindowManager;
    .restart local v30       #wrap_lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .local v10, mLayout:Landroid/widget/LinearLayout;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v9, Lcom/ghost/xianyu/view/LineBreakLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/ghost/xianyu/view/LineBreakLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .local v9, mBreakLayout:Lcom/ghost/xianyu/view/LineBreakLayout;
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 245
    .local v24, showBtn:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/high16 v31, 0x4190

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/OrderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f04000c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/OrderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f040002

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 249
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/ghost/xianyu/view/LineBreakLayout;->addView(Landroid/view/View;)V

    .line 250
    move v5, v4

    .line 251
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/ghost/xianyu/util/Property;

    .line 252
    .local v20, property:Lcom/ghost/xianyu/util/Property;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 256
    .local v18, propLength:I
    move/from16 v0, v18

    new-array v0, v0, [Landroid/widget/Button;

    move-object/from16 v17, v0

    .line 258
    .local v17, propBtns:[Landroid/widget/Button;
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_c
    move/from16 v0, v18

    if-lt v6, v0, :cond_13

    .line 302
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->propLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 260
    :cond_13
    new-instance v31, Landroid/widget/Button;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v31, v17, v6

    .line 261
    aget-object v32, v17, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/ghost/xianyu/util/PropValue;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ghost/xianyu/util/PropValue;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    aget-object v31, v17, v6

    const/high16 v32, -0x100

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setTextColor(I)V

    .line 263
    aget-object v31, v17, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 264
    aget-object v31, v17, v6

    const/high16 v32, 0x4180

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setTextSize(F)V

    .line 265
    aget-object v31, v17, v6

    add-int/lit8 v32, v23, -0x14

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 266
    aget-object v31, v17, v6

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Button;->setSingleLine()V

    .line 267
    aget-object v31, v17, v6

    sget-object v32, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 268
    aget-object v31, v17, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/OrderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/high16 v33, 0x7f04

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getColor(I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 269
    aget-object v31, v17, v6

    new-instance v32, Lcom/ghost/xianyu/OrderSelect$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ghost/xianyu/OrderSelect$1;-><init>(Lcom/ghost/xianyu/OrderSelect;I[Landroid/widget/Button;I)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    aget-object v31, v17, v6

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/ghost/xianyu/view/LineBreakLayout;->addView(Landroid/view/View;)V

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    .line 307
    .end local v5           #index:I
    .end local v6           #j:I
    .end local v9           #mBreakLayout:Lcom/ghost/xianyu/view/LineBreakLayout;
    .end local v10           #mLayout:Landroid/widget/LinearLayout;
    .end local v17           #propBtns:[Landroid/widget/Button;
    .end local v18           #propLength:I
    .end local v20           #property:Lcom/ghost/xianyu/util/Property;
    .end local v23           #screen_width:I
    .end local v24           #showBtn:Landroid/widget/Button;
    .end local v29           #wm:Landroid/view/WindowManager;
    .end local v30           #wrap_lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderSelect;->propLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    return-void
.end method


# virtual methods
.method public addToCart()V
    .locals 5

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->getShopping()Lcom/ghost/xianyu/util/Shopping;

    move-result-object v1

    .line 369
    .local v1, shopping:Lcom/ghost/xianyu/util/Shopping;
    if-eqz v1, :cond_0

    .line 370
    new-instance v0, Lcom/ghost/xianyu/util/DbHelper;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/util/DbHelper;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, helper:Lcom/ghost/xianyu/util/DbHelper;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "num_iid"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->num_iid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v3, "detail_url"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->detail_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v3, "store"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "title"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v3, "pic_url"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "price"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "promo_price"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "nick"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "sku_id"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->sku_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "quantity"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v3, "props_str"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->props_str:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v3, "promo_type"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->promo_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v3, "message"

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v2}, Lcom/ghost/xianyu/util/DbHelper;->insertShopping(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    const-string v3, "\u606d\u559c\uff0c\u6dfb\u52a0\u5230\u8d2d\u7269\u8f66\u6210\u529f\uff01"

    invoke-direct {p0, v3}, Lcom/ghost/xianyu/OrderSelect;->showToast(Ljava/lang/String;)V

    .line 387
    sget v3, Lcom/ghost/xianyu/Home;->cartNum:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ghost/xianyu/Home;->cartNum:I

    .line 388
    sget v3, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-static {p0, v3}, Lcom/ghost/xianyu/util/MyPreference;->setCartNum(Landroid/content/Context;I)V

    .line 389
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderSelect;->finish()V

    .line 394
    .end local v0           #helper:Lcom/ghost/xianyu/util/DbHelper;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v0       #helper:Lcom/ghost/xianyu/util/DbHelper;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v3, "\u6dfb\u52a0\u5230\u8d2d\u7269\u8f66\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6dfb\u52a0\uff01"

    invoke-direct {p0, v3}, Lcom/ghost/xianyu/OrderSelect;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 325
    :sswitch_0
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->onOrderConfirm()V

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderSelect;->addToCart()V

    goto :goto_0

    .line 331
    :sswitch_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderSelect;->finish()V

    goto :goto_0

    .line 335
    :sswitch_3
    sget-object v0, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->taobaoView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->selectBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    const/4 v0, 0x3

    sput v0, Lcom/ghost/xianyu/Home;->stepId:I

    .line 346
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    invoke-static {p0, v0}, Lcom/ghost/xianyu/util/MyPreference;->setStep(Landroid/content/Context;I)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->taobaoView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x7f090048 -> :sswitch_3
        0x7f09004a -> :sswitch_2
        0x7f09005d -> :sswitch_0
        0x7f09005e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 80
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderSelect;->finish()V

    .line 83
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->setContentView(I)V

    .line 86
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->propLayout:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherTitleLayout:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->selectBottomLayout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherView:Landroid/widget/ScrollView;

    .line 90
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->taobaoView:Landroid/widget/ScrollView;

    .line 91
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->payBtn:Landroid/widget/Button;

    .line 92
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->addCartBtn:Landroid/widget/Button;

    .line 93
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->titleTv:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->inventoryTv:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->priceTv:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->freightTv:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/view/NetImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->picImgV:Lcom/ghost/xianyu/view/NetImageView;

    .line 98
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/view/NetImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->otherImgV:Lcom/ghost/xianyu/view/NetImageView;

    .line 99
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->backImgV:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->quantityEt:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsLinkEt:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsTitleEt:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsPatternEt:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsPriceEt:Landroid/widget/EditText;

    .line 106
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->goodsNumEt:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->messageEt:Landroid/widget/EditText;

    .line 109
    sget-object v0, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->showOtherView()V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->payBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->addCartBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/ghost/xianyu/OrderSelect;->backImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderSelect;->showTaobaoView()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "isDestroy"

    iget-object v1, p0, Lcom/ghost/xianyu/OrderSelect;->isDestroy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method
