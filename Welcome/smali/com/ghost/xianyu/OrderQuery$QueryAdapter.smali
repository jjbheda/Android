.class Lcom/ghost/xianyu/OrderQuery$QueryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/OrderQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;


# direct methods
.method public constructor <init>(Lcom/ghost/xianyu/OrderQuery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->this$0:Lcom/ghost/xianyu/OrderQuery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 487
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 488
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 502
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, holder:Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    if-nez p2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 510
    new-instance v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;

    .end local v0           #holder:Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    invoke-direct {v0}, Lcom/ghost/xianyu/OrderQuery$ViewHolder;-><init>()V

    .line 511
    .restart local v0       #holder:Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    const v2, 0x7f090086

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 514
    const v2, 0x7f090088

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->quantityTv:Landroid/widget/TextView;

    .line 515
    const v2, 0x7f090089

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->priceTv:Landroid/widget/TextView;

    .line 516
    const v2, 0x7f09008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->paidTv:Landroid/widget/TextView;

    .line 517
    const v2, 0x7f09008c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->statusTv:Landroid/widget/TextView;

    .line 518
    const v2, 0x7f09008b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->messageTv:Landroid/widget/TextView;

    .line 519
    const v2, 0x7f09008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->sequenceTv:Landroid/widget/TextView;

    .line 520
    const v2, 0x7f090087

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/view/NetImageView;

    iput-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    .line 521
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/OrderInfo;

    .line 527
    .local v1, orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    iget-object v3, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ghost/xianyu/util/OrderInfo;->nick:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/ghost/xianyu/util/OrderInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 528
    iget-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->props_str:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->quantityTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u91cf: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ghost/xianyu/util/OrderInfo;->quantity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v3, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->priceTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->promo_price:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->price:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->statusTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/OrderInfo;->status_caption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->messageTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/OrderInfo;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v3, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->sequenceTv:Landroid/widget/TextView;

    iget v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/OrderInfo;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/view/NetImageView;->setTag(Ljava/lang/Object;)V

    .line 535
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/OrderInfo;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/view/NetImageView;->setImageUrl1(Ljava/lang/String;)V

    .line 551
    iget-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->total_price:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->sequence:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 552
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->paidTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->paidTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5b9e\u4ed8\u6b3e: \uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ghost/xianyu/util/OrderInfo;->total_price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_4
    return-object p2

    .line 523
    .end local v1           #orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    check-cast v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;

    .restart local v0       #holder:Lcom/ghost/xianyu/OrderQuery$ViewHolder;
    goto/16 :goto_0

    .line 528
    .restart local v1       #orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/ghost/xianyu/util/OrderInfo;->props_str:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 530
    :cond_2
    iget-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->promo_price:Ljava/lang/String;

    goto/16 :goto_2

    .line 533
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 555
    :cond_4
    iget-object v2, v0, Lcom/ghost/xianyu/OrderQuery$ViewHolder;->paidTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
