.class Lcom/ghost/xianyu/OrderConfirm$4;
.super Ljava/lang/Object;
.source "OrderConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderConfirm;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$3(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->titleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$4(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->bottomLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$5(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #getter for: Lcom/ghost/xianyu/OrderConfirm;->totalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$6(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    #calls: Lcom/ghost/xianyu/OrderConfirm;->initLayout()V
    invoke-static {v0}, Lcom/ghost/xianyu/OrderConfirm;->access$1(Lcom/ghost/xianyu/OrderConfirm;)V

    .line 116
    const/4 v0, 0x4

    sput v0, Lcom/ghost/xianyu/Home;->stepId:I

    .line 117
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm$4;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    sget v1, Lcom/ghost/xianyu/Home;->stepId:I

    invoke-static {v0, v1}, Lcom/ghost/xianyu/util/MyPreference;->setStep(Landroid/content/Context;I)V

    .line 118
    return-void
.end method
