.class Lcom/ghost/xianyu/OrderQuery$2;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$2;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$2;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$2;->this$0:Lcom/ghost/xianyu/OrderQuery;

    add-int/lit8 v1, p3, -0x1

    #calls: Lcom/ghost/xianyu/OrderQuery;->showOptions(I)V
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$11(Lcom/ghost/xianyu/OrderQuery;I)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$2;->this$0:Lcom/ghost/xianyu/OrderQuery;

    add-int/lit8 v1, p3, -0x1

    #calls: Lcom/ghost/xianyu/OrderQuery;->showOtherOptions(I)V
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$12(Lcom/ghost/xianyu/OrderQuery;I)V

    goto :goto_0
.end method
