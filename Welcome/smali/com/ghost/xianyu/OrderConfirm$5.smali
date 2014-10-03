.class Lcom/ghost/xianyu/OrderConfirm$5;
.super Ljava/lang/Object;
.source "OrderConfirm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderConfirm;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderConfirm;

.field private final synthetic val$messageEt:Landroid/widget/EditText;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderConfirm;ILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderConfirm$5;->this$0:Lcom/ghost/xianyu/OrderConfirm;

    iput p2, p0, Lcom/ghost/xianyu/OrderConfirm$5;->val$pos:I

    iput-object p3, p0, Lcom/ghost/xianyu/OrderConfirm$5;->val$messageEt:Landroid/widget/EditText;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 189
    sget-object v0, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ghost/xianyu/OrderConfirm$5;->val$pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghost/xianyu/util/Shopping;

    iget-object v1, p0, Lcom/ghost/xianyu/OrderConfirm$5;->val$messageEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 184
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 178
    return-void
.end method
