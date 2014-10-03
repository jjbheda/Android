.class public Lcom/ghost/xianyu/util/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private ins:Ljava/io/InputStream;

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "ins"

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    .line 19
    iget-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    iget-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 21
    iget-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    iget-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    iput-object p1, p0, Lcom/ghost/xianyu/util/ImageProcessor;->ins:Ljava/io/InputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public decodeStream()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ghost/xianyu/util/ImageProcessor;->ins:Ljava/io/InputStream;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ghost/xianyu/util/ImageProcessor;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmp"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .local v0, softBitmap:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ghost/xianyu/util/ImageProcessor;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    iget-object v1, p0, Lcom/ghost/xianyu/util/ImageProcessor;->bitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public processToDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ghost/xianyu/util/ImageProcessor;->decodeStream()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, bmp1:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/util/ImageProcessor;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    .local v1, bmp2:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 35
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 37
    return-object v2
.end method
