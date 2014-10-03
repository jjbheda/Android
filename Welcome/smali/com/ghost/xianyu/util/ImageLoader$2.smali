.class Lcom/ghost/xianyu/util/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/util/ImageLoader;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/util/ImageLoader$2;->this$0:Lcom/ghost/xianyu/util/ImageLoader;

    iput-object p2, p0, Lcom/ghost/xianyu/util/ImageLoader$2;->val$handler:Landroid/os/Handler;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/ghost/xianyu/util/ImageLoader$2;->this$0:Lcom/ghost/xianyu/util/ImageLoader;

    iget-object v4, v4, Lcom/ghost/xianyu/util/ImageLoader;->image_path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 32
    .local v2, msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lcom/ghost/xianyu/util/ImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
