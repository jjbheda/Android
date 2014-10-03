.class Lcom/ghost/xianyu/Register$MyAdapter$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Register$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghost/xianyu/Register$MyAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Register$MyAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Register$MyAdapter;

    iput p2, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->val$position:I

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Register$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;
    invoke-static {v0}, Lcom/ghost/xianyu/Register$MyAdapter;->access$0(Lcom/ghost/xianyu/Register$MyAdapter;)Lcom/ghost/xianyu/Register;

    move-result-object v0

    iget v1, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->val$position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ghost/xianyu/Register;->collegeId:I

    .line 561
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Register$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;
    invoke-static {v0}, Lcom/ghost/xianyu/Register$MyAdapter;->access$0(Lcom/ghost/xianyu/Register$MyAdapter;)Lcom/ghost/xianyu/Register;

    move-result-object v0

    iget-object v1, v0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Register$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;
    invoke-static {v0}, Lcom/ghost/xianyu/Register$MyAdapter;->access$0(Lcom/ghost/xianyu/Register$MyAdapter;)Lcom/ghost/xianyu/Register;

    move-result-object v0

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    iget v2, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/util/College;

    iget-object v0, v0, Lcom/ghost/xianyu/util/College;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/ghost/xianyu/Register$MyAdapter$1;->this$1:Lcom/ghost/xianyu/Register$MyAdapter;

    #getter for: Lcom/ghost/xianyu/Register$MyAdapter;->this$0:Lcom/ghost/xianyu/Register;
    invoke-static {v0}, Lcom/ghost/xianyu/Register$MyAdapter;->access$0(Lcom/ghost/xianyu/Register$MyAdapter;)Lcom/ghost/xianyu/Register;

    move-result-object v0

    iget-object v0, v0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 563
    return-void
.end method
