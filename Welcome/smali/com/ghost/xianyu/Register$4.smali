.class Lcom/ghost/xianyu/Register$4;
.super Ljava/lang/Thread;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Register;->timeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Register;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    .line 269
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    const/16 v2, 0x78

    iput v2, v1, Lcom/ghost/xianyu/Register;->timeCount:I

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    iget v1, v1, Lcom/ghost/xianyu/Register;->timeCount:I

    if-gtz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->timeHd:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    iget-object v1, v1, Lcom/ghost/xianyu/Register;->timeHd:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/ghost/xianyu/Register$4;->this$0:Lcom/ghost/xianyu/Register;

    iget v2, v1, Lcom/ghost/xianyu/Register;->timeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/ghost/xianyu/Register;->timeCount:I

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
