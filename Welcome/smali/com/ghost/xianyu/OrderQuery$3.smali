.class Lcom/ghost/xianyu/OrderQuery$3;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const/4 v1, 0x1

    #setter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$13(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 158
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->taobaoLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$14(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    invoke-virtual {v1}, Lcom/ghost/xianyu/OrderQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 159
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->otherLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$15(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    invoke-virtual {v1}, Lcom/ghost/xianyu/OrderQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 161
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$3;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #calls: Lcom/ghost/xianyu/OrderQuery;->dataChanged()V
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$9(Lcom/ghost/xianyu/OrderQuery;)V

    .line 163
    :cond_0
    return-void
.end method
