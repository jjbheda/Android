.class public Lcom/ghost/xianyu/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;
    }
.end annotation


# instance fields
.field image_path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "image_path"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ghost/xianyu/util/ImageLoader;->image_path:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public loadImage(Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;)V
    .locals 3
    .parameter "callBack"

    .prologue
    .line 18
    new-instance v0, Lcom/ghost/xianyu/util/ImageLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/ghost/xianyu/util/ImageLoader$1;-><init>(Lcom/ghost/xianyu/util/ImageLoader;Lcom/ghost/xianyu/util/ImageLoader$ImageCallBack;)V

    .line 25
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ghost/xianyu/util/ImageLoader$2;

    invoke-direct {v2, p0, v0}, Lcom/ghost/xianyu/util/ImageLoader$2;-><init>(Lcom/ghost/xianyu/util/ImageLoader;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method
