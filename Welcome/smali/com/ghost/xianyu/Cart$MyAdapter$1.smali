.class Lcom/ghost/xianyu/Cart$MyAdapter$1;
.super Ljava/lang/Object;
.source "Cart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Cart$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghost/xianyu/Cart$MyAdapter;

.field private final synthetic val$shopping:Lcom/ghost/xianyu/util/Shopping;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Cart$MyAdapter;Lcom/ghost/xianyu/util/Shopping;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Cart$MyAdapter;

    iput-object p2, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    iget-boolean v0, v0, Lcom/ghost/xianyu/util/Shopping;->isCheck:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ghost/xianyu/util/Shopping;->isCheck:Z

    .line 158
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Cart$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart$MyAdapter;->access$0(Lcom/ghost/xianyu/Cart$MyAdapter;)Lcom/ghost/xianyu/Cart;

    move-result-object v0

    #getter for: Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart;->access$1(Lcom/ghost/xianyu/Cart;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ghost/xianyu/util/Shopping;->isCheck:Z

    .line 162
    iget-object v0, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Cart$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Cart$MyAdapter;->this$0:Lcom/ghost/xianyu/Cart;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart$MyAdapter;->access$0(Lcom/ghost/xianyu/Cart$MyAdapter;)Lcom/ghost/xianyu/Cart;

    move-result-object v0

    #getter for: Lcom/ghost/xianyu/Cart;->selectedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ghost/xianyu/Cart;->access$1(Lcom/ghost/xianyu/Cart;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ghost/xianyu/Cart$MyAdapter$1;->val$shopping:Lcom/ghost/xianyu/util/Shopping;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
