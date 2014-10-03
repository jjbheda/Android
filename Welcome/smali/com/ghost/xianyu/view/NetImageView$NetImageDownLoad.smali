.class Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;
.super Landroid/os/AsyncTask;
.source "NetImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/view/NetImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetImageDownLoad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/view/NetImageView;


# direct methods
.method private constructor <init>(Lcom/ghost/xianyu/view/NetImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->this$0:Lcom/ghost/xianyu/view/NetImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ghost/xianyu/view/NetImageView;Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;-><init>(Lcom/ghost/xianyu/view/NetImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "params"

    .prologue
    .line 98
    const/4 v6, 0x0

    .line 99
    .local v6, url:Ljava/net/URL;
    const/4 v4, 0x0

    .line 100
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 101
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 103
    .local v1, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .end local v6           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 105
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 106
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 108
    iget-object v9, p0, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->this$0:Lcom/ghost/xianyu/view/NetImageView;

    #calls: Lcom/ghost/xianyu/view/NetImageView;->getBytesFromStream(Ljava/io/InputStream;)[B
    invoke-static {v9, v4}, Lcom/ghost/xianyu/view/NetImageView;->access$0(Lcom/ghost/xianyu/view/NetImageView;Ljava/io/InputStream;)[B

    move-result-object v2

    .line 109
    .local v2, bt:[B
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 111
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 112
    const/4 v9, 0x4

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 113
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v10, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 119
    if-eqz v4, :cond_0

    .line 121
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 122
    const/4 v4, 0x0

    .line 127
    :cond_0
    :goto_0
    if-eqz v8, :cond_6

    .line 128
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    const/4 v8, 0x0

    move-object v6, v7

    .line 132
    .end local v2           #bt:[B
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :cond_1
    :goto_1
    return-object v1

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, e:Ljava/net/MalformedURLException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v4, :cond_2

    .line 121
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    const/4 v4, 0x0

    .line 127
    .end local v3           #e:Ljava/net/MalformedURLException;
    :cond_2
    :goto_3
    if-eqz v8, :cond_1

    .line 128
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    const/4 v8, 0x0

    goto :goto_1

    .line 123
    .restart local v3       #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 124
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 117
    .restart local v3       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    if-eqz v4, :cond_3

    .line 121
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 122
    const/4 v4, 0x0

    .line 127
    :cond_3
    :goto_5
    if-eqz v8, :cond_1

    .line 128
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    const/4 v8, 0x0

    goto :goto_1

    .line 123
    :catch_3
    move-exception v3

    .line 124
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 118
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 119
    :goto_6
    if-eqz v4, :cond_4

    .line 121
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 122
    const/4 v4, 0x0

    .line 127
    :cond_4
    :goto_7
    if-eqz v8, :cond_5

    .line 128
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    const/4 v8, 0x0

    .line 131
    :cond_5
    throw v9

    .line 123
    :catch_4
    move-exception v3

    .line 124
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #url:Ljava/net/URL;
    .restart local v2       #bt:[B
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #url:Ljava/net/URL;
    :catch_5
    move-exception v3

    .line 124
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v2           #bt:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_6

    .line 116
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_6
    move-exception v3

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_4

    .line 114
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_2

    .end local v6           #url:Ljava/net/URL;
    .restart local v2       #bt:[B
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #url:Ljava/net/URL;
    :cond_6
    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->this$0:Lcom/ghost/xianyu/view/NetImageView;

    invoke-virtual {v0, p1}, Lcom/ghost/xianyu/view/NetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-static {}, Lcom/ghost/xianyu/util/NetImageCache;->getInstance()Lcom/ghost/xianyu/util/NetImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->this$0:Lcom/ghost/xianyu/view/NetImageView;

    #getter for: Lcom/ghost/xianyu/view/NetImageView;->mPicUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/ghost/xianyu/view/NetImageView;->access$1(Lcom/ghost/xianyu/view/NetImageView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ghost/xianyu/util/NetImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 143
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->this$0:Lcom/ghost/xianyu/view/NetImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/NetImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 94
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ghost/xianyu/view/NetImageView$NetImageDownLoad;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 149
    return-void
.end method
