.class public Lcom/ghost/xianyu/Cart;
.super Landroid/app/Activity;
.source "Cart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/Cart$MyAdapter;,
        Lcom/ghost/xianyu/Cart$ViewHolder;
    }
.end annotation


# instance fields
.field private backImgV:Landroid/widget/ImageView;

.field private cartCountTv:Landroid/widget/TextView;

.field private deleteOrderBtn:Landroid/widget/Button;

.field private helper:Lcom/ghost/xianyu/util/DbHelper;

.field private isDestroy:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ghost/xianyu/util/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private myAdapter:Lcom/ghost/xianyu/Cart$MyAdapter;

.field private noCartLayout:Landroid/widget/RelativeLayout;

.field private selectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field private submitOrderBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/Cart;->isDestroy:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/Cart;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/Cart;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private deleteOrder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const-string v2, "\u8bf7\u9009\u62e9\u8ba2\u5355"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_0
    return-void

    .line 200
    :cond_0
    sget v2, Lcom/ghost/xianyu/Home;->cartNum:I

    iget-object v3, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lcom/ghost/xianyu/Home;->cartNum:I

    .line 202
    sget v2, Lcom/ghost/xianyu/Home;->cartNum:I

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->cartCountTv:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->noCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->listView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->deleteOrderBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->submitOrderBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :goto_1
    sget v2, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-static {p0, v2}, Lcom/ghost/xianyu/util/MyPreference;->setCartNum(Landroid/content/Context;I)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->helper:Lcom/ghost/xianyu/util/DbHelper;

    invoke-virtual {v2, v0}, Lcom/ghost/xianyu/util/DbHelper;->deleteShopping(Ljava/util/List;)Z

    .line 220
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->myAdapter:Lcom/ghost/xianyu/Cart$MyAdapter;

    invoke-virtual {v2}, Lcom/ghost/xianyu/Cart$MyAdapter;->notifyDataSetChanged()V

    .line 222
    const-string v2, "\u5df2\u5220\u9664"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    .end local v0           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lcom/ghost/xianyu/Cart;->cartCountTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 214
    .restart local v0       #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/Shopping;

    .line 215
    .local v1, shopping:Lcom/ghost/xianyu/util/Shopping;
    iget v3, v1, Lcom/ghost/xianyu/util/Shopping;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private submitOrder()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "\u8bf7\u9009\u62e9\u8ba2\u5355"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ghost/xianyu/OrderConfirm;->isFromCart:Z

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/OrderConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 240
    :sswitch_0
    invoke-direct {p0}, Lcom/ghost/xianyu/Cart;->deleteOrder()V

    goto :goto_0

    .line 243
    :sswitch_1
    invoke-direct {p0}, Lcom/ghost/xianyu/Cart;->submitOrder()V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/Cart;->finish()V

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x7f090001 -> :sswitch_2
        0x7f090007 -> :sswitch_0
        0x7f090008 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ghost/xianyu/Cart;->finish()V

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->requestWindowFeature(I)Z

    .line 58
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->setContentView(I)V

    .line 60
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->listView:Landroid/widget/ListView;

    .line 61
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->cartCountTv:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->deleteOrderBtn:Landroid/widget/Button;

    .line 63
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->submitOrderBtn:Landroid/widget/Button;

    .line 64
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->noCartLayout:Landroid/widget/RelativeLayout;

    .line 65
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Cart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->backImgV:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->deleteOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->submitOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->backImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    sget v0, Lcom/ghost/xianyu/Home;->cartNum:I

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->noCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->deleteOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->submitOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->cartCountTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/ghost/xianyu/Cart$MyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ghost/xianyu/Cart$MyAdapter;-><init>(Lcom/ghost/xianyu/Cart;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->myAdapter:Lcom/ghost/xianyu/Cart$MyAdapter;

    .line 91
    new-instance v0, Lcom/ghost/xianyu/util/DbHelper;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/util/DbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->helper:Lcom/ghost/xianyu/util/DbHelper;

    .line 92
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->helper:Lcom/ghost/xianyu/util/DbHelper;

    invoke-virtual {v0}, Lcom/ghost/xianyu/util/DbHelper;->listShopping()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Cart;->list:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ghost/xianyu/Cart;->myAdapter:Lcom/ghost/xianyu/Cart$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->noCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->deleteOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/ghost/xianyu/Cart;->submitOrderBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "isDestroy"

    iget-boolean v1, p0, Lcom/ghost/xianyu/Cart;->isDestroy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method
