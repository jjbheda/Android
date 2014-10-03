.class Lcom/ghost/xianyu/util/ImageLoader$1;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/util/ImageLoader;->loadImage(Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/util/ImageLoader;

.field private final synthetic val$callBack:Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/util/ImageLoader;Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/util/ImageLoader$1;->this$0:Lcom/ghost/xianyu/util/ImageLoader;

    iput-object p2, p0, Lcom/ghost/xianyu/util/ImageLoader$1;->val$callBack:Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;

    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 21
    iget-object v1, p0, Lcom/ghost/xianyu/util/ImageLoader$1;->val$callBack:Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;->getDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    return-void
.end method
