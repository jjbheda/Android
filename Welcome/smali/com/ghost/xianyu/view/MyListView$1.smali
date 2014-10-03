.class Lcom/ghost/xianyu/view/MyListView$1;
.super Ljava/lang/Object;
.source "MyListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/view/MyListView;->initWithContext(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/ghost/xianyu/view/MyListView$1;->this$0:Lcom/ghost/xianyu/view/MyListView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView$1;->this$0:Lcom/ghost/xianyu/view/MyListView;

    iget-object v1, p0, Lcom/ghost/xianyu/view/MyListView$1;->this$0:Lcom/ghost/xianyu/view/MyListView;

    #getter for: Lcom/ghost/xianyu/view/MyListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/ghost/xianyu/view/MyListView;->access$0(Lcom/ghost/xianyu/view/MyListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    #setter for: Lcom/ghost/xianyu/view/MyListView;->mHeaderViewHeight:I
    invoke-static {v0, v1}, Lcom/ghost/xianyu/view/MyListView;->access$1(Lcom/ghost/xianyu/view/MyListView;I)V

    .line 98
    iget-object v0, p0, Lcom/ghost/xianyu/view/MyListView$1;->this$0:Lcom/ghost/xianyu/view/MyListView;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/MyListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 99
    return-void
.end method
