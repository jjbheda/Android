.class Lcom/ghost/xianyu/view/MyListView$2;
.super Ljava/lang/Object;
.source "MyListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/view/MyListView;->setPullLoadEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/view/MyListView;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/view/MyListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/view/MyListView$2;->this$0:Lcom/ghost/xianyu/view/MyListView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView$2;->this$0:Lcom/ghost/xianyu/view/MyListView;

    #calls: Lcom/ghost/xianyu/view/MyListView;->startLoadMore()V
    invoke-static {v0}, Lcom/ghost/xianyu/view/MyListView;->access$2(Lcom/ghost/xianyu/view/MyListView;)V

    .line 146
    return-void
.end method
