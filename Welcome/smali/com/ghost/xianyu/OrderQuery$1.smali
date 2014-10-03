.class Lcom/ghost/xianyu/OrderQuery$1;
.super Landroid/os/Handler;
.source "OrderQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/OrderQuery;
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
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isFirst:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$0(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #setter for: Lcom/ghost/xianyu/OrderQuery;->isFirst:Z
    invoke-static {v1, v3}, Lcom/ghost/xianyu/OrderQuery;->access$1(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$2(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/MyListView;->stopRefresh()V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/MyListView;->stopLoadMore()V

    goto :goto_1

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isFirst:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$0(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isClick:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$4(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$5(Lcom/ghost/xianyu/OrderQuery;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #setter for: Lcom/ghost/xianyu/OrderQuery;->isFirst:Z
    invoke-static {v1, v3}, Lcom/ghost/xianyu/OrderQuery;->access$1(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 85
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #setter for: Lcom/ghost/xianyu/OrderQuery;->isClick:Z
    invoke-static {v1, v3}, Lcom/ghost/xianyu/OrderQuery;->access$6(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :goto_2
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;
    invoke-static {v2}, Lcom/ghost/xianyu/OrderQuery;->access$8(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/MyListView;->stopRefresh()V

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EE MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, regular:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/MyListView;->setRefreshTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v0           #regular:Ljava/text/SimpleDateFormat;
    :cond_4
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v2, v2, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 100
    :pswitch_2
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #calls: Lcom/ghost/xianyu/OrderQuery;->dataChanged()V
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$9(Lcom/ghost/xianyu/OrderQuery;)V

    .line 101
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/MyListView;->stopLoadMore()V

    goto/16 :goto_0

    .line 104
    :pswitch_3
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const-string v2, "\u5df2\u7ecf\u5230\u6700\u540e\u4e00\u9879\u4e86"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mListView:Lcom/ghost/xianyu/view/MyListView;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$3(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/view/MyListView;->stopLoadMore()V

    goto/16 :goto_0

    .line 108
    :pswitch_4
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->orderInfoList:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->status_caption:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mAdapter:Lcom/ghost/xianyu/OrderQuery$QueryAdapter;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$8(Lcom/ghost/xianyu/OrderQuery;)Lcom/ghost/xianyu/OrderQuery$QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghost/xianyu/OrderQuery$QueryAdapter;->notifyDataSetChanged()V

    .line 110
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->status_caption:Ljava/lang/String;

    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, v1, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghost/xianyu/util/OrderInfo;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/ghost/xianyu/util/OrderInfo;->status_caption:Ljava/lang/String;

    goto/16 :goto_0

    .line 116
    :pswitch_5
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ghost/xianyu/OrderQuery;->access$5(Lcom/ghost/xianyu/OrderQuery;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 117
    iget-object v2, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/ghost/xianyu/OrderQuery;->showExpressInfo(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/ghost/xianyu/OrderQuery;->access$10(Lcom/ghost/xianyu/OrderQuery;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_6
    iget-object v1, p0, Lcom/ghost/xianyu/OrderQuery$1;->this$0:Lcom/ghost/xianyu/OrderQuery;

    const-string v2, "\u6ca1\u6709\u8ba2\u5355\u4fe1\u606f"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
