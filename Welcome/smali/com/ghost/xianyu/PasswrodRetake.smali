.class public Lcom/ghost/xianyu/PasswrodRetake;
.super Landroid/app/Activity;
.source "PasswrodRetake.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final FAILURE:I = -0x1

.field static final NO_NETWORK:I = 0x0

.field static final SEND_CODE:I = 0x1

.field static final SEND_CODE_FAIL:I = -0x2

.field static final SEND_SUCCESS:I = 0x2

.field static final SET_AGAIN:I = 0x2

.field static final SUCCESS:I = 0x1


# instance fields
.field authHd:Landroid/os/Handler;

.field private authPd:Landroid/app/ProgressDialog;

.field backImgV:Landroid/widget/ImageView;

.field code:Ljava/lang/String;

.field codeEt:Landroid/widget/EditText;

.field currentMode:I

.field newPsd:Ljava/lang/String;

.field newPsdEt:Landroid/widget/EditText;

.field newPsdReinputEt:Landroid/widget/EditText;

.field newReinputPsd:Ljava/lang/String;

.field nextBtn:Landroid/widget/Button;

.field okBtn:Landroid/widget/Button;

.field phoneEt:Landroid/widget/EditText;

.field phoneNum:Ljava/lang/String;

.field returnCode:Ljava/lang/String;

.field sendCodeLayout:Landroid/widget/LinearLayout;

.field writeNewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/ghost/xianyu/PasswrodRetake$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/PasswrodRetake$1;-><init>(Lcom/ghost/xianyu/PasswrodRetake;)V

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/ghost/xianyu/PasswrodRetake;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ghost/xianyu/PasswrodRetake;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/ghost/xianyu/PasswrodRetake;->jumpToNext()V

    return-void
.end method

.method private authen()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 159
    new-instance v0, Lcom/ghost/xianyu/PasswrodRetake$2;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/PasswrodRetake$2;-><init>(Lcom/ghost/xianyu/PasswrodRetake;)V

    .line 169
    invoke-virtual {v0}, Lcom/ghost/xianyu/PasswrodRetake$2;->start()V

    .line 170
    return-void
.end method

.method private jumpToNext()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    .line 151
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    return-void
.end method

.method private sendMessToServer()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u53d1\u9001\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 247
    new-instance v0, Lcom/ghost/xianyu/PasswrodRetake$3;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/PasswrodRetake$3;-><init>(Lcom/ghost/xianyu/PasswrodRetake;)V

    .line 262
    invoke-virtual {v0}, Lcom/ghost/xianyu/PasswrodRetake$3;->start()V

    .line 263
    return-void
.end method

.method private validateOtherInfo()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->codeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->code:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdReinputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newReinputPsd:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->code:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u6fc0\u6d3b\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->code:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->returnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string v0, "\u77ed\u4fe1\u6fc0\u6d3b\u7801\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    .line 193
    :cond_3
    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e3a6-20\u4e4b\u95f4"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newReinputPsd:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    const-string v0, "\u8bf7\u518d\u6b21\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newReinputPsd:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 203
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_6
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 212
    :cond_7
    invoke-direct {p0}, Lcom/ghost/xianyu/PasswrodRetake;->authen()V

    goto :goto_0
.end method

.method private validatePhone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghost/xianyu/util/ValidityCheck;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    const-string v0, "\u8f93\u5165\u7684\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    :cond_2
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authHd:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/ghost/xianyu/PasswrodRetake;->sendMessToServer()V

    goto :goto_0
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    iget v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/ghost/xianyu/PasswrodRetake;->finish()V

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    iput v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    .line 270
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 138
    :sswitch_0
    invoke-direct {p0}, Lcom/ghost/xianyu/PasswrodRetake;->validatePhone()V

    goto :goto_0

    .line 141
    :sswitch_1
    invoke-direct {p0}, Lcom/ghost/xianyu/PasswrodRetake;->validateOtherInfo()V

    goto :goto_0

    .line 144
    :sswitch_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/PasswrodRetake;->goBack()V

    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x7f090009 -> :sswitch_2
        0x7f09000c -> :sswitch_0
        0x7f090011 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/PasswrodRetake;->requestWindowFeature(I)Z

    .line 83
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->setContentView(I)V

    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->authPd:Landroid/app/ProgressDialog;

    .line 86
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneEt:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->codeEt:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdEt:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdReinputEt:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->nextBtn:Landroid/widget/Button;

    .line 91
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->okBtn:Landroid/widget/Button;

    .line 92
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->backImgV:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/PasswrodRetake;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->backImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    const-string v0, "currentMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    .line 102
    iget v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    if-ne v0, v2, :cond_0

    .line 103
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->code:Ljava/lang/String;

    .line 109
    const-string v0, "newPsd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    .line 110
    const-string v0, "newReinputPsd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newReinputPsd:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->codeEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdReinputEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->newReinputPsd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_1
    iput v2, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    .line 119
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->writeNewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/ghost/xianyu/PasswrodRetake;->sendCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "phone"

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "code"

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->codeEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "newPsd"

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "newReinputPsd"

    iget-object v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->newPsdReinputEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "currentMode"

    iget v1, p0, Lcom/ghost/xianyu/PasswrodRetake;->currentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method
