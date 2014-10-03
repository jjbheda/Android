.class public Lcom/ghost/xianyu/Cart$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "Cart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Cart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ghost/xianyu/Cart;


# direct methods
.method public constructor <init>(Lcom/ghost/xianyu/Cart;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 107
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/Cart$MyAdapter;)Lcom/ghost/xianyu/Cart;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;

    #getter for: Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart;->access$0(Lcom/ghost/xianyu/Cart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;

    #getter for: Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart;->access$0(Lcom/ghost/xianyu/Cart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v0, Lcom/ghost/xianyu/Cart$ViewHolder;

    invoke-direct {v0}, Lcom/ghost/xianyu/Cart$ViewHolder;-><init>()V

    .line 131
    .local v0, holder:Lcom/ghost/xianyu/Cart$ViewHolder;
    const v2, 0x7f090074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->nickTv:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f090078

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f090079

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->propsTv:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f09007a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->numTv:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f09007b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->priceTv:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f090075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ghost/xianyu/view/NetImageView;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    .line 137
    const v2, 0x7f090077

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->selectedCb:Landroid/widget/CheckBox;

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;

    #getter for: Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/ghost/xianyu/Cart;->access$0(Lcom/ghost/xianyu/Cart;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/Shopping;

    .line 146
    .local v1, shopping:Lcom/ghost/xianyu/util/Shopping;
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->propsTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/Shopping;->props_alias:Ljava/lang/String;

    const-string v4, "&nbsp;"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->numTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u91cf:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->priceTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->selectedCb:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/ghost/xianyu/util/Shopping;->isCheck:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->selectedCb:Landroid/widget/CheckBox;

    new-instance v3, Lcom/ghost/xianyu/Cart$MyAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/ghost/xianyu/Cart$MyAdapter$1;-><init>(Lcom/ghost/xianyu/Cart$MyAdapter;Lcom/ghost/xianyu/util/Shopping;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, v1, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->nickTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_2
    iget-object v2, v1, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/view/NetImageView;->setImageResource(I)V

    .line 180
    :goto_3
    return-object p2

    .line 141
    .end local v0           #holder:Lcom/ghost/xianyu/Cart$ViewHolder;
    .end local v1           #shopping:Lcom/ghost/xianyu/util/Shopping;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/Cart$ViewHolder;

    .restart local v0       #holder:Lcom/ghost/xianyu/Cart$ViewHolder;
    goto/16 :goto_0

    .line 149
    .restart local v1       #shopping:Lcom/ghost/xianyu/util/Shopping;
    :cond_1
    iget-object v2, v1, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_2
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->nickTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->nickTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 177
    :cond_3
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/view/NetImageView;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v2, v0, Lcom/ghost/xianyu/Cart$ViewHolder;->pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

    iget-object v3, v1, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/view/NetImageView;->setImageUrl1(Ljava/lang/String;)V

    goto :goto_3
.end method
