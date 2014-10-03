.class public Lcom/ghost/xianyu/util/NetImageCache;
.super Ljava/util/WeakHashMap;
.source "NetImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "/XianYu/cache"

.field private static mNetImageCache:Lcom/ghost/xianyu/util/NetImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/ghost/xianyu/util/NetImageCache;

    invoke-direct {v0}, Lcom/ghost/xianyu/util/NetImageCache;-><init>()V

    sput-object v0, Lcom/ghost/xianyu/util/NetImageCache;->mNetImageCache:Lcom/ghost/xianyu/util/NetImageCache;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    return-void
.end method

.method private cacheBmpToMemory(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter "file"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 67
    const/4 v5, 0x1

    .line 68
    .local v5, sucessed:Z
    const/4 v3, 0x0

    .line 70
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 75
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-direct {p0, v3}, Lcom/ghost/xianyu/util/NetImageCache;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 76
    .local v1, bs:[B
    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move v5, v6

    .line 81
    .end local v5           #sucessed:Z
    :goto_1
    return v5

    .line 71
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bs:[B
    .restart local v5       #sucessed:Z
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 73
    const/4 v5, 0x0

    goto :goto_0

    .line 80
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bs:[B
    :cond_0
    invoke-virtual {p0, p2, v0, v6}, Lcom/ghost/xianyu/util/NetImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private changeUrlToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 133
    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, name:Ljava/lang/String;
    const-string v1, "//"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "="

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "&"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method private getBytesFromStream(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "inputStream"

    .prologue
    const/4 v5, -0x1

    .line 85
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 87
    .local v0, b:[B
    const/4 v3, 0x0

    .line 88
    .local v3, len:I
    :cond_0
    :goto_0
    if-ne v3, v5, :cond_2

    .line 99
    if-eqz p1, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 94
    :goto_2
    if-eq v3, v5, :cond_0

    .line 95
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 103
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/ghost/xianyu/util/NetImageCache;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ghost/xianyu/util/NetImageCache;->mNetImageCache:Lcom/ghost/xianyu/util/NetImageCache;

    return-object v0
.end method

.method private isCacheFileIsExit()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    const-string v2, ""

    .line 114
    .local v2, filePath:Ljava/lang/String;
    const-string v3, ""

    .line 116
    .local v3, rootpath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/XianYu/cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/XianYu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, file1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 126
    .end local v1           #file1:Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method private isLocalHasBmp(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    .line 48
    const/4 v2, 0x1

    .line 50
    .local v2, isExit:Z
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/util/NetImageCache;->changeUrlToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/ghost/xianyu/util/NetImageCache;->isCacheFileIsExit()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/ghost/xianyu/util/NetImageCache;->cacheBmpToMemory(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 60
    :goto_0
    return v2

    .line 58
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isBitmapExit(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/ghost/xianyu/util/NetImageCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    .local v0, isExit:Z
    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/util/NetImageCache;->isLocalHasBmp(Ljava/lang/String;)Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/ghost/xianyu/util/NetImageCache;->isCacheFileIsExit()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, filePath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/util/NetImageCache;->changeUrlToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, name:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 148
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local v6, outputStream:Ljava/io/OutputStream;
    move-object v5, v6

    .line 152
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 154
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    :goto_2
    if-eqz v5, :cond_0

    .line 165
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    :goto_3
    const/4 v5, 0x0

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    return-object v7

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v1           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "isCacheToLocal"

    .prologue
    .line 184
    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/ghost/xianyu/util/NetImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/ghost/xianyu/util/NetImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
