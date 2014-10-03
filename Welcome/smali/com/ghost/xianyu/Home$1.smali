.class Lcom/ghost/xianyu/Home$1;
.super Ljava/util/TimerTask;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghost/xianyu/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/Home;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/Home;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/Home$1;->this$0:Lcom/ghost/xianyu/Home;

    .line 139
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$0(Ljava/lang/Boolean;)V

    .line 143
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/ghost/xianyu/Home;->access$1(Ljava/lang/Boolean;)V

    .line 144
    return-void
.end method
