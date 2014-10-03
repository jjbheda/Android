.class public Lcom/ghost/xianyu/util/PropValue;
.super Ljava/lang/Object;
.source "PropValue.java"


# instance fields
.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "code"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/ghost/xianyu/util/PropValue;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/ghost/xianyu/util/PropValue;->code:Ljava/lang/String;

    .line 10
    return-void
.end method
