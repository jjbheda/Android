.class Lcom/ghost/xianyu/OrderSelect$1;
.super Ljava/lang/Object;
.source "OrderSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderSelect;->showTaobaoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderSelect;

.field private final synthetic val$index:I

.field private final synthetic val$propBtns:[Landroid/widget/Button;

.field private final synthetic val$propLength:I


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderSelect;I[Landroid/widget/Button;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    iput p2, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$index:I

    iput-object p3, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$propBtns:[Landroid/widget/Button;

    iput p4, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$propLength:I

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/high16 v6, 0x7f04

    const/4 v5, -0x1

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    .local v0, id:I
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$0(Lcom/ghost/xianyu/OrderSelect;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    iget v2, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    .line 276
    .local v2, selectId:I
    if-ne v2, v0, :cond_1

    .line 277
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->count:I
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$1(Lcom/ghost/xianyu/OrderSelect;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/ghost/xianyu/OrderSelect;->count:I
    invoke-static {v3, v4}, Lcom/ghost/xianyu/OrderSelect;->access$2(Lcom/ghost/xianyu/OrderSelect;I)V

    .line 279
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$0(Lcom/ghost/xianyu/OrderSelect;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    iput v5, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    .line 280
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$propBtns:[Landroid/widget/Button;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    invoke-virtual {v4}, Lcom/ghost/xianyu/OrderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-ne v2, v5, :cond_2

    .line 285
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->count:I
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$1(Lcom/ghost/xianyu/OrderSelect;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/ghost/xianyu/OrderSelect;->count:I
    invoke-static {v3, v4}, Lcom/ghost/xianyu/OrderSelect;->access$2(Lcom/ghost/xianyu/OrderSelect;I)V

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->proptyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$0(Lcom/ghost/xianyu/OrderSelect;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghost/xianyu/util/Property;

    iput v0, v3, Lcom/ghost/xianyu/util/Property;->selectId:I

    .line 288
    const/high16 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    const/4 v1, 0x0

    .local v1, m:I
    :goto_1
    iget v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$propLength:I

    if-lt v1, v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #getter for: Lcom/ghost/xianyu/OrderSelect;->count:I
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$1(Lcom/ghost/xianyu/OrderSelect;)I

    move-result v3

    if-nez v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    #calls: Lcom/ghost/xianyu/OrderSelect;->getPropStr()V
    invoke-static {v3}, Lcom/ghost/xianyu/OrderSelect;->access$3(Lcom/ghost/xianyu/OrderSelect;)V

    goto :goto_0

    .line 290
    :cond_3
    if-eq v1, v0, :cond_4

    .line 291
    iget-object v3, p0, Lcom/ghost/xianyu/OrderSelect$1;->val$propBtns:[Landroid/widget/Button;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/ghost/xianyu/OrderSelect$1;->this$0:Lcom/ghost/xianyu/OrderSelect;

    invoke-virtual {v4}, Lcom/ghost/xianyu/OrderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 289
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
