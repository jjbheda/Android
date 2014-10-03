.class Lcom/ghost/xianyu/Cart$ViewHolder;
.super Ljava/lang/Object;
.source "Cart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Cart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field nickTv:Landroid/widget/TextView;

.field numTv:Landroid/widget/TextView;

.field pic_urlImgV:Lcom/ghost/xianyu/view/NetImageView;

.field priceTv:Landroid/widget/TextView;

.field propsTv:Landroid/widget/TextView;

.field selectedCb:Landroid/widget/CheckBox;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
