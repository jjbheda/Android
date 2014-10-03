.class public Lcom/ghost/xianyu/Home;
.super Landroid/app/Activity;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static cartNum:I

.field public static detail_url:Ljava/lang/String;

.field public static ems_fee:Ljava/lang/String;

.field public static express_fee:Ljava/lang/String;

.field public static freight_payer:Ljava/lang/String;

.field private static hasTask:Ljava/lang/Boolean;

.field private static isExit:Ljava/lang/Boolean;

.field public static location_city:Ljava/lang/String;

.field public static location_state:Ljava/lang/String;

.field public static nick:Ljava/lang/String;

.field public static num:Ljava/lang/String;

.field public static num_iid:Ljava/lang/String;

.field public static otherStore:Ljava/lang/String;

.field public static otherTitle:Ljava/lang/String;

.field public static otherUrl:Ljava/lang/String;

.field public static password:Ljava/lang/String;

.field public static phoneNum:Ljava/lang/String;

.field public static pic_url:Ljava/lang/String;

.field public static post_fee:Ljava/lang/String;

.field public static price:Ljava/lang/String;

.field public static promo_price:Ljava/lang/String;

.field public static promo_type:Ljava/lang/String;

.field public static propertyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Property;",
            ">;"
        }
    .end annotation
.end field

.field public static property_alias:Ljava/lang/String;

.field public static skusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Skus;",
            ">;"
        }
    .end annotation
.end field

.field public static stepId:I

.field public static store:Ljava/lang/String;

.field public static stuff_status:Ljava/lang/String;

.field public static title:Ljava/lang/String;

.field public static type:Ljava/lang/String;


# instance fields
.field final TAG:Ljava/lang/String;

.field private amazonImgV:Landroid/widget/ImageView;

.field private badge:Lcom/ghost/xianyu/view/BadgeView;

.field private cartImgV:Landroid/widget/ImageView;

.field private client:Lcom/taobao/top/android/TopAndroidClient;

.field private createImgV:Landroid/widget/ImageView;

.field private dangdangImgV:Landroid/widget/ImageView;

.field private dianpingImgV:Landroid/widget/ImageView;

.field private downloadApkFile:Lcom/ghost/xianyu/util/DownloadApkFile;

.field private downloadApkHd:Landroid/os/Handler;

.field private goBackImgV:Landroid/widget/ImageView;

.field private goForwardImgV:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private homeImgV:Landroid/widget/ImageView;

.field private homeLayout:Landroid/widget/RelativeLayout;

.field private homeStepImgV:Landroid/widget/ImageView;

.field private jdImgV:Landroid/widget/ImageView;

.field private jumeiImgV:Landroid/widget/ImageView;

.field private lefengImgV:Landroid/widget/ImageView;

.field private loadPd:Landroid/app/ProgressDialog;

.field private loadingPagePb:Landroid/widget/ProgressBar;

.field mUrl:Ljava/lang/String;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private mallImgV:Landroid/widget/ImageView;

.field private mallLayout:Landroid/widget/LinearLayout;

.field private meituanImgV:Landroid/widget/ImageView;

.field private myCartImgV:Landroid/widget/ImageView;

.field private payImgV:Landroid/widget/ImageView;

.field private pd:Landroid/app/ProgressDialog;

.field private queryImgV:Landroid/widget/ImageView;

.field private refreshImgV:Landroid/widget/ImageView;

.field private searchEt:Landroid/widget/EditText;

.field private searchImgV:Landroid/widget/ImageView;

.field private searchLayout:Landroid/widget/RelativeLayout;

.field private searchPageImgV:Landroid/widget/ImageView;

.field tExit:Ljava/util/Timer;

.field private taobaoImgV:Landroid/widget/ImageView;

.field task:Ljava/util/TimerTask;

.field private vanclImgV:Landroid/widget/ImageView;

.field private vipshopImgV:Landroid/widget/ImageView;

.field private webView:Landroid/webkit/WebView;

.field private yhdImgV:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->otherTitle:Ljava/lang/String;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->otherUrl:Ljava/lang/String;

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->otherStore:Ljava/lang/String;

    .line 129
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    .line 130
    const-string v0, "0"

    sput-object v0, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ghost/xianyu/Home;->isExit:Ljava/lang/Boolean;

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ghost/xianyu/Home;->hasTask:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const-string v0, "Home"

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->TAG:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    .line 133
    const-string v0, "21509472"

    invoke-static {v0}, Lcom/taobao/top/android/TopAndroidClient;->getAndroidClientByAppKey(Ljava/lang/String;)Lcom/taobao/top/android/TopAndroidClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->client:Lcom/taobao/top/android/TopAndroidClient;

    .line 138
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->tExit:Ljava/util/Timer;

    .line 139
    new-instance v0, Lcom/ghost/xianyu/Home$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Home$1;-><init>(Lcom/ghost/xianyu/Home;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->task:Ljava/util/TimerTask;

    .line 336
    new-instance v0, Lcom/ghost/xianyu/Home$2;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Home$2;-><init>(Lcom/ghost/xianyu/Home;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;

    .line 380
    new-instance v0, Lcom/ghost/xianyu/Home$3;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Home$3;-><init>(Lcom/ghost/xianyu/Home;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    sput-object p0, Lcom/ghost/xianyu/Home;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    sput-object p0, Lcom/ghost/xianyu/Home;->hasTask:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->loadPd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ghost/xianyu/Home;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ghost/xianyu/Home;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->loadingPagePb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ghost/xianyu/Home;)Lcom/ghost/xianyu/util/DownloadApkFile;
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->downloadApkFile:Lcom/ghost/xianyu/util/DownloadApkFile;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 463
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v4, "item_id="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v5, "item_id="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, tmp:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 482
    .end local v2           #tmp:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v4, "com/i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, firstIndex:I
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v4, ".htm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, lastIndex:I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 472
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x5

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v4, "detail.htm?id="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 475
    if-lez v0, :cond_2

    .line 476
    iget-object v3, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2       #tmp:Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 478
    if-lez v1, :cond_2

    .line 479
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 482
    .end local v2           #tmp:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 886
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 891
    :cond_0
    return-void
.end method

.method private goHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 881
    return-void
.end method

.method private goMyCart()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/Cart;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Home;->startActivity(Landroid/content/Intent;)V

    .line 505
    return-void
.end method

.method private goMyOrder()V
    .locals 2

    .prologue
    .line 926
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 932
    :goto_0
    return-void

    .line 931
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/OrderQuery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goSearchPage()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 905
    return-void
.end method

.method private initShoppingInfo()V
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 612
    sget-object v0, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->otherTitle:Ljava/lang/String;

    .line 614
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->stuff_status:Ljava/lang/String;

    .line 615
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->type:Ljava/lang/String;

    .line 616
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->property_alias:Ljava/lang/String;

    .line 617
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->location_state:Ljava/lang/String;

    .line 618
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->location_city:Ljava/lang/String;

    .line 619
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->title:Ljava/lang/String;

    .line 620
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->detail_url:Ljava/lang/String;

    .line 621
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->nick:Ljava/lang/String;

    .line 622
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->store:Ljava/lang/String;

    .line 623
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->pic_url:Ljava/lang/String;

    .line 624
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->num:Ljava/lang/String;

    .line 625
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->price:Ljava/lang/String;

    .line 626
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->freight_payer:Ljava/lang/String;

    .line 627
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->post_fee:Ljava/lang/String;

    .line 628
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->express_fee:Ljava/lang/String;

    .line 629
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->ems_fee:Ljava/lang/String;

    .line 630
    const-string v0, ""

    sput-object v0, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    .line 631
    const-string v0, "0"

    sput-object v0, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    .line 632
    return-void
.end method

.method private parseInfo()V
    .locals 5

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->initShoppingInfo()V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{select promotions from taobao.ump.promotion.get where item_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, ql:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{select title,detail_url,nick,pic_url,num,price,freight_payer,post_fee,express_fee,ems_fee,stuff_status,type,location.state,location.city,property_alias,sku.sku_id,sku.properties_name,sku.properties,sku.price,sku.quantity from item where num_iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 642
    sget-object v2, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->client:Lcom/taobao/top/android/TopAndroidClient;

    const/4 v2, 0x0

    new-instance v3, Lcom/ghost/xianyu/Home$10;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Home$10;-><init>(Lcom/ghost/xianyu/Home;)V

    .line 856
    const/4 v4, 0x1

    .line 644
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/taobao/top/android/TopAndroidClient;->tql(Ljava/lang/String;Ljava/lang/Long;Lcom/taobao/top/android/api/TopTqlListener;Z)V

    .line 857
    return-void
.end method

.method private parseOtherInfo()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/ghost/xianyu/Home$9;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Home$9;-><init>(Lcom/ghost/xianyu/Home;)V

    .line 500
    invoke-virtual {v0}, Lcom/ghost/xianyu/Home$9;->start()V

    .line 501
    return-void
.end method

.method private refreshPage()V
    .locals 2

    .prologue
    .line 894
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 900
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 908
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->searchEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, str:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    const-string v2, "\u8bf7\u8f93\u5165\u641c\u7d22\u5185\u5bb9"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 918
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 914
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 915
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.baidu.com/s?wd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 916
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 917
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method private setSession()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/ghost/xianyu/Home$5;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Home$5;-><init>(Lcom/ghost/xianyu/Home;)V

    .line 319
    invoke-virtual {v0}, Lcom/ghost/xianyu/Home$5;->start()V

    .line 320
    return-void
.end method

.method private showMallPage()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 923
    return-void
.end method

.method private showWebPage(Ljava/lang/String;)V
    .locals 4
    .parameter "link"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 860
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 861
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 868
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method private submitLink()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 553
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 558
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 567
    :cond_1
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v1, "taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v1, "tmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    :cond_2
    sget-object v0, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    const-string v0, "\u8bf7\u9009\u62e9\u5546\u54c1"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 576
    :cond_3
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Home;->loadPd:Landroid/app/ProgressDialog;

    .line 577
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->loadPd:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->loadPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 580
    sget-object v0, Lcom/ghost/xianyu/Home;->num_iid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->parseOtherInfo()V

    goto :goto_0

    .line 584
    :cond_4
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->parseInfo()V

    goto :goto_0
.end method


# virtual methods
.method public createUpdateDialog()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u8f6f\u4ef6\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d1\u73b0\u65b0\u7248\u672c,\u5efa\u8bae\u7acb\u5373\u66f4\u65b0\u4f7f\u7528."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 414
    const-string v2, "\u7acb\u5373\u66f4\u65b0"

    new-instance v3, Lcom/ghost/xianyu/Home$6;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Home$6;-><init>(Lcom/ghost/xianyu/Home;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 419
    const-string v2, "\u6682\u4e0d\u66f4\u65b0"

    new-instance v3, Lcom/ghost/xianyu/Home$7;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Home$7;-><init>(Lcom/ghost/xianyu/Home;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 425
    return-void
.end method

.method public downloadApk(Ljava/lang/String;)V
    .locals 5
    .parameter "urlStr"

    .prologue
    const/4 v4, -0x2

    .line 428
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    .line 434
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 435
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 436
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    const-string v2, "\u6b63\u5728\u66f4\u65b0\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/ghost/xianyu/Home$8;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Home$8;-><init>(Lcom/ghost/xianyu/Home;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 447
    new-instance v1, Lcom/ghost/xianyu/util/DownloadApkFile;

    iget-object v2, p0, Lcom/ghost/xianyu/Home;->pd:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/ghost/xianyu/Home;->downloadApkHd:Landroid/os/Handler;

    invoke-direct {v1, p1, v2, v3}, Lcom/ghost/xianyu/util/DownloadApkFile;-><init>(Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ghost/xianyu/Home;->downloadApkFile:Lcom/ghost/xianyu/util/DownloadApkFile;

    .line 448
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ghost/xianyu/Home;->downloadApkFile:Lcom/ghost/xianyu/util/DownloadApkFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 449
    .local v0, downloadApkTd:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public installApk()V
    .locals 4

    .prologue
    .line 453
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ghost/xianyu/util/FileManager;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/XianYu/Download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u54b8\u9c7c\u4ee3\u4ed8.apk"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v0, apkFile:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v1}, Lcom/ghost/xianyu/Home;->startActivity(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public isGetLinkInfo(Ljava/lang/String;)Z
    .locals 14
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 508
    iget-object v12, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    sput-object v12, Lcom/ghost/xianyu/Home;->otherUrl:Ljava/lang/String;

    .line 511
    iget-object v12, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v13, ".com/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 512
    .local v7, last_index:I
    if-gez v7, :cond_1

    .line 513
    iget-object v12, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    const-string v13, ".cn/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 514
    if-gez v7, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v11

    .line 519
    :cond_1
    iget-object v12, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 520
    .local v9, tmp:Ljava/lang/String;
    const-string v12, "."

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 521
    .local v3, first_index:I
    if-ltz v3, :cond_0

    .line 524
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/ghost/xianyu/Home;->otherStore:Ljava/lang/String;

    .line 527
    const-string v1, ""

    .line 528
    .local v1, content:Ljava/lang/String;
    const/4 v2, -0x1

    .line 529
    .local v2, firstIndex:I
    const/4 v6, -0x1

    .line 530
    .local v6, lastIndex:I
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 531
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 532
    .local v4, httpConn:Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 533
    .local v5, inStreamReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 535
    .local v0, bufReader:Ljava/io/BufferedReader;
    const-string v8, ""

    .line 536
    .local v8, line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 549
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 537
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    if-gez v2, :cond_4

    .line 539
    const-string v11, "<title>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 540
    :cond_4
    if-gez v6, :cond_5

    .line 541
    const-string v11, "</title>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 542
    :cond_5
    if-lez v2, :cond_2

    if-lez v6, :cond_2

    .line 543
    add-int/lit8 v11, v2, 0x7

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/ghost/xianyu/Home;->otherTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 936
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1030
    :goto_0
    :pswitch_0
    return-void

    .line 938
    :pswitch_1
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->searchPage()V

    goto :goto_0

    .line 941
    :pswitch_2
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goHome()V

    goto :goto_0

    .line 944
    :pswitch_3
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->refreshPage()V

    goto :goto_0

    .line 947
    :pswitch_4
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goMyCart()V

    goto :goto_0

    .line 950
    :pswitch_5
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goForward()V

    goto :goto_0

    .line 953
    :pswitch_6
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goBack()V

    goto :goto_0

    .line 956
    :pswitch_7
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->submitLink()V

    goto :goto_0

    .line 959
    :pswitch_8
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goHome()V

    goto :goto_0

    .line 962
    :pswitch_9
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->showMallPage()V

    goto :goto_0

    .line 965
    :pswitch_a
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goMyOrder()V

    goto :goto_0

    .line 968
    :pswitch_b
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goMyCart()V

    goto :goto_0

    .line 971
    :pswitch_c
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->goSearchPage()V

    goto :goto_0

    .line 974
    :pswitch_d
    const-string v0, "http://ai.m.taobao.com/?pid=mm_32878410_4272694_14502053&eventid=858300"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :pswitch_e
    const-string v0, "http://m.jumei.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :pswitch_f
    const-string v0, "http://wap.lefeng.com/index.php/home/index/guid/5279974daffaa216107509"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :pswitch_10
    const-string v0, "http://m.vancl.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :pswitch_11
    const-string v0, "http://m.yhd.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :pswitch_12
    const-string v0, "http://m.vipshop.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :pswitch_13
    const-string v0, "http://m.dangdang.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :pswitch_14
    const-string v0, "\u8bf7\u9009\u62e9\u5546\u54c1"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 996
    const-string v0, "http://m.jd.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :pswitch_15
    const-string v0, "http://z.cn/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :pswitch_16
    const-string v0, "http://m.meituan.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :pswitch_17
    const-string v0, "http://m.dianping.com/"

    invoke-direct {p0, v0}, Lcom/ghost/xianyu/Home;->showWebPage(Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :pswitch_18
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1013
    const/4 v0, 0x1

    sput v0, Lcom/ghost/xianyu/Home;->stepId:I

    .line 1026
    :goto_1
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1027
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    invoke-static {p0, v0}, Lcom/ghost/xianyu/util/MyPreference;->setStep(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1018
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    if-ne v0, v3, :cond_1

    .line 1019
    const/4 v0, 0x3

    sput v0, Lcom/ghost/xianyu/Home;->stepId:I

    .line 1020
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->submitLink()V

    goto :goto_1

    .line 1022
    :cond_1
    sput v3, Lcom/ghost/xianyu/Home;->stepId:I

    goto :goto_1

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0, v7}, Lcom/ghost/xianyu/Home;->requestWindowFeature(I)Z

    .line 152
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->setContentView(I)V

    .line 154
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    .line 155
    const v2, 0x7f09002a

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    .line 156
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    .line 157
    const v2, 0x7f09001a

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    .line 158
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->goBackImgV:Landroid/widget/ImageView;

    .line 159
    const v2, 0x7f090031

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->goForwardImgV:Landroid/widget/ImageView;

    .line 160
    const v2, 0x7f090032

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->refreshImgV:Landroid/widget/ImageView;

    .line 161
    const v2, 0x7f090033

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->createImgV:Landroid/widget/ImageView;

    .line 162
    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->cartImgV:Landroid/widget/ImageView;

    .line 163
    const v2, 0x7f09002c

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->payImgV:Landroid/widget/ImageView;

    .line 164
    const v2, 0x7f09002b

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->homeImgV:Landroid/widget/ImageView;

    .line 165
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->taobaoImgV:Landroid/widget/ImageView;

    .line 166
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->jumeiImgV:Landroid/widget/ImageView;

    .line 167
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->lefengImgV:Landroid/widget/ImageView;

    .line 168
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->vanclImgV:Landroid/widget/ImageView;

    .line 169
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->yhdImgV:Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->vipshopImgV:Landroid/widget/ImageView;

    .line 171
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->dangdangImgV:Landroid/widget/ImageView;

    .line 172
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->jdImgV:Landroid/widget/ImageView;

    .line 173
    const v2, 0x7f090023

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->amazonImgV:Landroid/widget/ImageView;

    .line 174
    const v2, 0x7f090024

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->meituanImgV:Landroid/widget/ImageView;

    .line 175
    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->dianpingImgV:Landroid/widget/ImageView;

    .line 176
    const v2, 0x7f090026

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->searchImgV:Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f090027

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->mallImgV:Landroid/widget/ImageView;

    .line 178
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->queryImgV:Landroid/widget/ImageView;

    .line 179
    const v2, 0x7f090029

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->myCartImgV:Landroid/widget/ImageView;

    .line 180
    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->searchPageImgV:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    .line 183
    const v2, 0x7f090018

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->searchEt:Landroid/widget/EditText;

    .line 184
    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->loadingPagePb:Landroid/widget/ProgressBar;

    .line 185
    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Home;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    .line 187
    new-instance v2, Lcom/ghost/xianyu/view/BadgeView;

    iget-object v3, p0, Lcom/ghost/xianyu/Home;->cartImgV:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3}, Lcom/ghost/xianyu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    .line 189
    const-string v2, "user_info"

    invoke-virtual {p0, v2, v5}, Lcom/ghost/xianyu/Home;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "cartNum"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/ghost/xianyu/Home;->cartNum:I

    .line 191
    const-string v2, "sessionId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    .line 192
    const-string v2, "phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ghost/xianyu/Home;->phoneNum:Ljava/lang/String;

    .line 193
    const-string v2, "stepId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/ghost/xianyu/Home;->stepId:I

    .line 196
    :try_start_0
    sget-object v2, Lcom/ghost/xianyu/encrytion/AESEncryptor;->MAK:Ljava/lang/String;

    const-string v3, "password"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ghost/xianyu/encrytion/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ghost/xianyu/Home;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 204
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 205
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 206
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/ghost/xianyu/Home$4;

    invoke-direct {v3, p0}, Lcom/ghost/xianyu/Home$4;-><init>(Lcom/ghost/xianyu/Home;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    sget v2, Lcom/ghost/xianyu/Home;->stepId:I

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->createImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->refreshImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->goForwardImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->goBackImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->cartImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->payImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->taobaoImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->jumeiImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->lefengImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->vanclImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->yhdImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->vipshopImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->dangdangImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->jdImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->amazonImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->meituanImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->dianpingImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->searchImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mallImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->queryImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->myCartImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->searchPageImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    sput-boolean v7, Lcom/ghost/xianyu/util/NetworkReceiver;->isConnection:Z

    .line 290
    invoke-direct {p0}, Lcom/ghost/xianyu/Home;->setSession()V

    .line 294
    :goto_2
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    sput-object v2, Lcom/ghost/xianyu/Home;->password:Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->homeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/ghost/xianyu/Home;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 292
    :cond_1
    sput-boolean v5, Lcom/ghost/xianyu/util/NetworkReceiver;->isConnection:Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 372
    const-string v0, "\u9000\u51fa"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 373
    const/4 v0, 0x1

    const-string v1, "\u6ce8\u9500"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 374
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 590
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    sget-object v1, Lcom/ghost/xianyu/Home;->isExit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 595
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/ghost/xianyu/Home;->isExit:Ljava/lang/Boolean;

    .line 596
    const-string v1, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa\u54b8\u9c7c"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 597
    sget-object v1, Lcom/ghost/xianyu/Home;->hasTask:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/ghost/xianyu/Home;->tExit:Ljava/util/Timer;

    iget-object v2, p0, Lcom/ghost/xianyu/Home;->task:Ljava/util/TimerTask;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/Home;->finish()V

    .line 602
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 607
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 356
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 358
    :pswitch_0
    invoke-virtual {p0}, Lcom/ghost/xianyu/Home;->finish()V

    goto :goto_0

    .line 361
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ghost/xianyu/util/MyPreference;->setIsLogin(Landroid/content/Context;Z)V

    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ghost/xianyu/util/MyPreference;->setSessionId(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Home;->startActivity(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/ghost/xianyu/Home;->finish()V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 326
    sget v0, Lcom/ghost/xianyu/Home;->cartNum:I

    if-lez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ghost/xianyu/Home;->cartNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghost/xianyu/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/BadgeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/BadgeView;->show()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/BadgeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ghost/xianyu/Home;->badge:Lcom/ghost/xianyu/view/BadgeView;

    invoke-virtual {v0}, Lcom/ghost/xianyu/view/BadgeView;->hide()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "url"

    iget-object v1, p0, Lcom/ghost/xianyu/Home;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method
