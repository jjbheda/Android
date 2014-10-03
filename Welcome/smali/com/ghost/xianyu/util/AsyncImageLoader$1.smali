.class Lcom/ghost/xianyu/util/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/util/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/util/AsyncImageLoader;

.field private final synthetic val$callback:Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/util/AsyncImageLoader;Ljava/lang/String;Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->this$0:Lcom/ghost/xianyu/util/AsyncImageLoader;

    iput-object p2, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->val$callback:Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->this$0:Lcom/ghost/xianyu/util/AsyncImageLoader;

    iget-object v3, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ghost/xianyu/util/AsyncImageLoader;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->this$0:Lcom/ghost/xianyu/util/AsyncImageLoader;

    iget-object v2, v2, Lcom/ghost/xianyu/util/AsyncImageLoader;->imageCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->this$0:Lcom/ghost/xianyu/util/AsyncImageLoader;

    #getter for: Lcom/ghost/xianyu/util/AsyncImageLoader;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ghost/xianyu/util/AsyncImageLoader;->access$0(Lcom/ghost/xianyu/util/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ghost/xianyu/util/AsyncImageLoader$1$1;

    iget-object v4, p0, Lcom/ghost/xianyu/util/AsyncImageLoader$1;->val$callback:Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;

    invoke-direct {v3, p0, v4, v0}, Lcom/ghost/xianyu/util/AsyncImageLoader$1$1;-><init>(Lcom/ghost/xianyu/util/AsyncImageLoader$1;Lcom/ghost/xianyu/util/AsyncImageLoader$ImageCallback;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
