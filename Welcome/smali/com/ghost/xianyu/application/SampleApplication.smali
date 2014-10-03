.class public Lcom/ghost/xianyu/application/SampleApplication;
.super Landroid/app/Application;
.source "SampleApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    invoke-virtual {p0}, Lcom/ghost/xianyu/application/SampleApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "21509472"

    const-string v2, "2f4fe3d7a7453d2ea9941e670d094407"

    const-string v3, "callback://authresult"

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/top/android/TopAndroidClient;->registerAndroidClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
