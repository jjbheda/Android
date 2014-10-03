.class public Lcom/ghost/xianyu/util/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public prop_id:Ljava/lang/String;

.field public prop_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/PropValue;",
            ">;"
        }
    .end annotation
.end field

.field public prop_name:Ljava/lang/String;

.field public selectId:I

.field public tmp_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prop_id"
    .parameter "prop_name"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ghost/xianyu/util/Property;->prop_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ghost/xianyu/util/Property;->prop_name:Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ghost/xianyu/util/Property;->selectId:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/util/Property;->hashMap:Ljava/util/HashMap;

    .line 21
    return-void
.end method
