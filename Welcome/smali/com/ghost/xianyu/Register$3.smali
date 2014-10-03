.class Lcom/ghost/xianyu/Register$3;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Register;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Register$3;->this$0:Lcom/ghost/xianyu/Register;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 164
    const v0, 0x7f09006c

    if-ne p2, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ghost/xianyu/Register$3;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u5973"

    iput-object v1, v0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register$3;->this$0:Lcom/ghost/xianyu/Register;

    const-string v1, "\u7537"

    iput-object v1, v0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    goto :goto_0
.end method
