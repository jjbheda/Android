.class Lcom/ghost/xianyu/OrderQuery$8;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->showOptions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iput p2, p0, Lcom/ghost/xianyu/OrderQuery$8;->val$pos:I

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 346
    if-nez p2, :cond_1

    .line 347
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ghost/xianyu/OrderQuery$8;->val$pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v0, v0, Lcom/ghost/xianyu/util/OrderInfo;->express_id:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const-string v1, "\u6ca1\u6709\u7269\u6d41\u4fe1\u606f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 360
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget v1, p0, Lcom/ghost/xianyu/OrderQuery$8;->val$pos:I

    #calls: Lcom/ghost/xianyu/OrderQuery;->getExpressInfo(I)V
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$23(Lcom/ghost/xianyu/OrderQuery;I)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ghost/xianyu/OrderQuery$8;->val$pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v0, v0, Lcom/ghost/xianyu/util/OrderInfo;->status:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 354
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget v1, p0, Lcom/ghost/xianyu/OrderQuery$8;->val$pos:I

    #calls: Lcom/ghost/xianyu/OrderQuery;->cancelOrder(I)V
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$24(Lcom/ghost/xianyu/OrderQuery;I)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$8;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const-string v1, "\u4e0d\u80fd\u53d6\u6d88\u8ba2\u5355"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
