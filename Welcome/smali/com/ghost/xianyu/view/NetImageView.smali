.class public Lcom/ghost/xianyu/view/NetImageView;
.super Landroid/widget/ImageView;
.source "NetImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;
    }
.end annotation


# instance fields
.field private mPicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/view/NetImageView;Ljava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/NetImageView;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/view/NetImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getBytesFromStream(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "inputStream"

    .prologue
    const/4 v5, -0x1

    .line 66
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 68
    .local v0, b:[B
    const/4 v3, 0x0

    .line 69
    .local v3, len:I
    :cond_0
    :goto_0
    if-ne v3, v5, :cond_2

    .line 80
    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 71
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 75
    :goto_2
    if-eq v3, v5, :cond_0

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 47
    invoke-static {}, Lcom/ghost/xianyu/util/NetImageCache;->getInstance()Lcom/ghost/xianyu/util/NetImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ghost/xianyu/util/NetImageCache;->isBitmapExit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/ghost/xianyu/util/NetImageCache;->getInstance()Lcom/ghost/xianyu/util/NetImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ghost/xianyu/util/NetImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 49
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/NetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;-><init>(Lcom/ghost/xianyu/view/NetImageView;Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private loadImage1(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 56
    invoke-static {}, Lcom/ghost/xianyu/util/NetImageCache;->getInstance()Lcom/ghost/xianyu/util/NetImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ghost/xianyu/util/NetImageCache;->isBitmapExit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ghost/xianyu/view/NetImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/ghost/xianyu/util/NetImageCache;->getInstance()Lcom/ghost/xianyu/util/NetImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ghost/xianyu/util/NetImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/view/NetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 60
    :cond_0
    const v1, 0x7f020024

    invoke-virtual {p0, v1}, Lcom/ghost/xianyu/view/NetImageView;->setImageResource(I)V

    .line 61
    new-instance v1, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;-><init>(Lcom/ghost/xianyu/view/NetImageView;Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/NetImageView;->loadImage(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setImageUrl1(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/NetImageView;->loadImage1(Ljava/lang/String;)V

    .line 44
    return-void
.end method
