.class public Lcom/ghost/xianyu/util/DownloadApkFile;
.super Ljava/lang/Object;
.source "DownloadApkFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MSG_DIALOG:I = 0x3

.field public static final MSG_DONE:I = 0x1

.field public static final MSG_FAIL:I = -0x1

.field public static final MSG_NO_SDCARD:I = -0x2

.field public static final MSG_NO_SPACE:I = 0x0

.field public static final MSG_STOP:I = 0x2


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCancel:Z

.field private pd:Landroid/app/ProgressDialog;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 2
    .parameter "popupLink"
    .parameter "pd"
    .parameter "handler"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    .line 32
    iput-object p3, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    .line 34
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->isCancel:Z

    .line 40
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->url:Ljava/net/URL;

    .line 37
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ghost/xianyu/util/DownloadApkFile;->isCancel:Z

    .line 44
    return-void
.end method

.method public run()V
    .locals 22

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 55
    .local v4, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 56
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 57
    invoke-static {}, Lcom/ghost/xianyu/util/FileManager;->getSDFreeSize()J

    move-result-wide v14

    .line 58
    .local v14, sdSize:J
    const-string v17, "ASAM"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SD size "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v17

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v14, v17

    if-lez v17, :cond_7

    .line 60
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v17

    move/from16 v0, v17

    int-to-double v11, v0

    .line 62
    .local v11, max:D
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/XianYu/Download"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, folderPath:Ljava/lang/String;
    const-string v17, "/XianYu/Download"

    invoke-static/range {v17 .. v17}, Lcom/ghost/xianyu/util/FileManager;->createFolder(Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/\u54b8\u9c7c\u4ee3\u4ed8.apk.tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, apkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 67
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 68
    .local v9, is:Ljava/io/InputStream;
    if-nez v9, :cond_2

    .line 69
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Unable to create InputStream"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v8, fos:Ljava/io/FileOutputStream;
    const/16 v17, 0x2800

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 75
    .local v3, buffer:[B
    const/16 v16, 0x0

    .line 77
    .local v16, total:I
    :cond_3
    const/16 v17, 0x0

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 78
    .local v13, numRead:I
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "stream read to buffer: numread="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    if-gez v13, :cond_4

    .line 80
    const-string v17, "download apk"

    const-string v18, "has done"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/\u54b8\u9c7c\u4ee3\u4ed8.apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    :goto_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 112
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 117
    .end local v2           #apkFile:Ljava/io/File;
    .end local v3           #buffer:[B
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #folderPath:Ljava/lang/String;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #max:D
    .end local v13           #numRead:I
    .end local v14           #sdSize:J
    .end local v16           #total:I
    :catch_0
    move-exception v5

    .line 118
    .local v5, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 85
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #apkFile:Ljava/io/File;
    .restart local v3       #buffer:[B
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    .restart local v7       #folderPath:Ljava/lang/String;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #max:D
    .restart local v13       #numRead:I
    .restart local v14       #sdSize:J
    .restart local v16       #total:I
    :cond_4
    add-int v16, v16, v13

    .line 88
    const-wide/high16 v17, 0x4090

    div-double v17, v11, v17

    const-wide/high16 v19, 0x4090

    div-double v17, v17, v19

    const-wide/high16 v19, 0x3ff0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_5

    .line 90
    :try_start_1
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "#.00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v18, 0x4090

    div-double v18, v11, v18

    const-wide/high16 v20, 0x4090

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, lastNum:Ljava/lang/String;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "#.00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4090

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4090

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, firstNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4090

    div-double v18, v11, v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 108
    .end local v6           #firstNum:Ljava/lang/String;
    .end local v10           #lastNum:Ljava/lang/String;
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->isCancel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    goto/16 :goto_1

    .line 95
    :cond_5
    const-wide/high16 v17, 0x4090

    div-double v17, v11, v17

    const-wide/high16 v19, 0x3ff0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_6

    .line 97
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "#.00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v18, 0x4090

    div-double v18, v11, v18

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    .line 98
    .restart local v10       #lastNum:Ljava/lang/String;
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v18, "#.00"

    invoke-direct/range {v17 .. v18}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4090

    div-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 99
    .restart local v6       #firstNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    double-to-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "KB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "KB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 104
    .end local v6           #firstNum:Ljava/lang/String;
    .end local v10           #lastNum:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    double-to-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->pd:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    const-string v18, "%1d/%2d"

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    .end local v2           #apkFile:Ljava/io/File;
    .end local v3           #buffer:[B
    .end local v7           #folderPath:Ljava/lang/String;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #max:D
    .end local v13           #numRead:I
    .end local v16           #total:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/util/DownloadApkFile;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
