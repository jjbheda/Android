.class public Lcom/ghost/xianyu/OrderConfirm;
.super Landroid/app/Activity;
.source "OrderConfirm.java"


# static fields
.field public static isFromCart:Z = false

.field public static orderList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghost/xianyu/util/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field static final tag:Ljava/lang/String; = "OrderConfirm"


# instance fields
.field private backImgV:Landroid/widget/ImageView;

.field private bottomLayout:Landroid/widget/LinearLayout;

.field private confirmBtn:Landroid/widget/Button;

.field private confirmStepImgV:Landroid/widget/ImageView;

.field private isDestroy:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;

.field private orderLayout:Landroid/widget/LinearLayout;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private totalLayout:Landroid/widget/RelativeLayout;

.field private totalTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ghost/xianyu/OrderConfirm;->isFromCart:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/OrderConfirm;->isDestroy:Z

    .line 50
    new-instance v0, Lcom/ghost/xianyu/OrderConfirm$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/OrderConfirm$1;-><init>(Lcom/ghost/xianyu/OrderConfirm;)V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/OrderConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/OrderConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderConfirm;->initLayout()V

    return-void
.end method

.method static synthetic access$2(Lcom/ghost/xianyu/OrderConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderConfirm;->submitToServer()V

    return-void
.end method

.method static synthetic access$3(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->titleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ghost/xianyu/OrderConfirm;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->totalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initLayout()V
    .locals 22

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderConfirm;->orderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    const-wide/16 v15, 0x0

    .line 144
    .local v15, total:D
    sget-object v18, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 147
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 194
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v18, "0.00"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, df:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderConfirm;->totalTv:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\uffe5"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void

    .line 148
    .end local v2           #df:Ljava/text/DecimalFormat;
    :cond_0
    sget-object v18, Lcom/ghost/xianyu/OrderConfirm;->orderList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ghost/xianyu/util/Shopping;

    .line 149
    .local v12, shopping:Lcom/ghost/xianyu/util/Shopping;
    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/OrderConfirm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 150
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f030010

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 151
    .local v17, view:Landroid/view/View;
    const v18, 0x7f09008f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 152
    .local v7, nickTv:Landroid/widget/TextView;
    const v18, 0x7f090090

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 153
    .local v13, titleTv:Landroid/widget/TextView;
    const v18, 0x7f090091

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 154
    .local v11, propsTv:Landroid/widget/TextView;
    const v18, 0x7f090092

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 155
    .local v10, priceTv:Landroid/widget/TextView;
    const v18, 0x7f090093

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 157
    .local v6, messageEt:Landroid/widget/EditText;
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->props_str:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "&nbsp;"

    const-string v20, " "

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 160
    .local v14, tmp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\u4ef6    "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    iget-object v9, v12, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    .line 163
    .local v9, price:Ljava/lang/String;
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\uffe5"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 165
    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderConfirm;->orderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    iget-object v0, v12, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v15, v15, v18

    .line 171
    move v8, v3

    .line 172
    .local v8, pos:I
    new-instance v18, Lcom/ghost/xianyu/OrderConfirm$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v6}, Lcom/ghost/xianyu/OrderConfirm$5;-><init>(Lcom/ghost/xianyu/OrderConfirm;ILandroid/widget/EditText;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 161
    .end local v8           #pos:I
    .end local v9           #price:Ljava/lang/String;
    :cond_2
    iget-object v9, v12, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    goto :goto_1
.end method

.method private submitToServer()V
    .locals 2

    .prologue
    .line 199
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;

    .line 205
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u63d0\u4ea4\u8ba2\u5355\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ghost/xianyu/OrderConfirm$6;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderConfirm$6;-><init>(Lcom/ghost/xianyu/OrderConfirm;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 76
    invoke-virtual {p0}, Lcom/ghost/xianyu/OrderConfirm;->finish()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->requestWindowFeature(I)Z

    .line 80
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->setContentView(I)V

    .line 82
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmBtn:Landroid/widget/Button;

    .line 83
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->totalTv:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->orderLayout:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->titleLayout:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->bottomLayout:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->backImgV:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/OrderConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->totalLayout:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ghost/xianyu/OrderConfirm$2;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderConfirm$2;-><init>(Lcom/ghost/xianyu/OrderConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->backImgV:Landroid/widget/ImageView;

    new-instance v1, Lcom/ghost/xianyu/OrderConfirm$3;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderConfirm$3;-><init>(Lcom/ghost/xianyu/OrderConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;

    new-instance v1, Lcom/ghost/xianyu/OrderConfirm$4;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/OrderConfirm$4;-><init>(Lcom/ghost/xianyu/OrderConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/ghost/xianyu/Home;->stepId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->totalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->bottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->confirmStepImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->totalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/ghost/xianyu/OrderConfirm;->bottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-direct {p0}, Lcom/ghost/xianyu/OrderConfirm;->initLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "isDestroy"

    iget-boolean v1, p0, Lcom/ghost/xianyu/OrderConfirm;->isDestroy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method
