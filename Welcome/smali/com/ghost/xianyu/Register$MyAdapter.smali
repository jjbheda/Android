.class Lcom/ghost/xianyu/Register$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/ghost/xianyu/Register;


# direct methods
.method public constructor <init>(Lcom/ghost/xianyu/Register;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ct"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 524
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 525
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/Register$MyAdapter;)Lcom/ghost/xianyu/Register;
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 539
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 546
    if-nez p2, :cond_0

    .line 547
    new-instance v0, Lcom/ghost/xianyu/Register$ViewHolder;

    invoke-direct {v0}, Lcom/ghost/xianyu/Register$ViewHolder;-><init>()V

    .line 548
    .local v0, holder:Lcom/ghost/xianyu/Register$ViewHolder;
    iget-object v1, p0, Lcom/ghost/xianyu/Register$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 549
    const v1, 0x7f09008e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ghost/xianyu/Register$ViewHolder;->tv:Landroid/widget/TextView;

    .line 550
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 554
    :goto_0
    iget-object v2, v0, Lcom/ghost/xianyu/Register$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/College;

    iget-object v1, v1, Lcom/ghost/xianyu/util/College;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, v0, Lcom/ghost/xianyu/Register$ViewHolder;->tv:Landroid/widget/TextView;

    new-instance v2, Lcom/ghost/xianyu/Register$MyAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/ghost/xianyu/Register$MyAdapter$1;-><init>(Lcom/ghost/xianyu/Register$MyAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    return-object p2

    .line 552
    .end local v0           #holder:Lcom/ghost/xianyu/Register$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/Register$ViewHolder;

    .restart local v0       #holder:Lcom/ghost/xianyu/Register$ViewHolder;
    goto :goto_0
.end method
