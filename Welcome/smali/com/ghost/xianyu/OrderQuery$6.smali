.class Lcom/ghost/xianyu/OrderQuery$6;
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
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$6;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$6;->this$0:Lcom/ghost/xianyu/OrderQuery;

    #getter for: Lcom/ghost/xianyu/OrderQuery;->queryStepImgV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ghost/xianyu/OrderQuery;->access$18(Lcom/ghost/xianyu/OrderQuery;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$6;->this$0:Lcom/ghost/xianyu/OrderQuery;

    invoke-virtual {v0}, Lcom/ghost/xianyu/OrderQuery;->firstLoading()V

    .line 200
    const/4 v0, 0x6

    sput v0, Lcom/ghost/xianyu/Home;->stepId:I

    .line 201
    iget-object v0, p0, Lcom/ghost/xianyu/OrderQuery$6;->this$0:Lcom/ghost/xianyu/OrderQuery;

    sget v1, Lcom/ghost/xianyu/Home;->stepId:I

    invoke-static {v0, v1}, Lcom/ghost/xianyu/util/MyPreference;->setStep(Landroid/content/Context;I)V

    .line 202
    return-void
.end method
