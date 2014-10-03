.class public Lcom/ghost/xianyu/Register;
.super Landroid/app/Activity;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghost/xianyu/Register$MyAdapter;,
        Lcom/ghost/xianyu/Register$ViewHolder;
    }
.end annotation


# static fields
.field static final BASIC_INFO:I = 0x0

.field static final COLLEGE_NAME_ARR:[Ljava/lang/String; = null

.field static final FAILURE:I = 0x0

.field static final NO_NETWORK:I = -0x2

.field static final REAL_USER_INFO:I = 0x1

.field static final REGISTERED:I = -0x1

.field static final SEND_SUCCESS:I = 0x2

.field static final SUCCESS:I = 0x1


# instance fields
.field agreeCb:Landroid/widget/CheckBox;

.field authHd:Landroid/os/Handler;

.field authPd:Landroid/app/ProgressDialog;

.field backImgV:Landroid/widget/ImageView;

.field basicLayout:Landroid/widget/LinearLayout;

.field code:Ljava/lang/String;

.field codeEt:Landroid/widget/EditText;

.field collegeBtn:Landroid/widget/Button;

.field collegeId:I

.field collegeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ghost/xianyu/util/College;",
            ">;"
        }
    .end annotation
.end field

.field confirmRegBtn:Landroid/widget/Button;

.field currentMode:I

.field dorm:Ljava/lang/String;

.field dormEt:Landroid/widget/EditText;

.field email:Ljava/lang/String;

.field emailEt:Landroid/widget/EditText;

.field gender:Ljava/lang/String;

.field genderRdGroup:Landroid/widget/RadioGroup;

.field generalTv:Landroid/widget/TextView;

.field getCodeBtn:Landroid/widget/Button;

.field isAgree:Z

.field isStartValidate:Z

.field listView:Landroid/widget/ListView;

.field manRdBtn:Landroid/widget/RadioButton;

.field myAdapter:Lcom/ghost/xianyu/Register$MyAdapter;

.field okBtn:Landroid/widget/Button;

.field password:Ljava/lang/String;

.field phoneEt:Landroid/widget/EditText;

.field phoneNum:Ljava/lang/String;

.field popWd:Landroid/widget/PopupWindow;

.field psdEt:Landroid/widget/EditText;

.field rePassword:Ljava/lang/String;

.field rePasswordEt:Landroid/widget/EditText;

.field returnCode:Ljava/lang/String;

.field spinnerImgV:Landroid/widget/ImageView;

.field timeCount:I

.field timeHd:Landroid/os/Handler;

.field titleTv:Landroid/widget/TextView;

.field userLayout:Landroid/widget/LinearLayout;

.field userName:Ljava/lang/String;

.field userNameEt:Landroid/widget/EditText;

.field womanRdBtn:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6cb3\u5357\u5de5\u4e1a\u5927\u5b66"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u90d1\u5dde\u5927\u5b66"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u90d1\u5dde\u8f7b\u5de5\u4e1a\u5b66\u9662"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ghost/xianyu/Register;->COLLEGE_NAME_ARR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ghost/xianyu/Register;->isStartValidate:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->userName:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/ghost/xianyu/Register$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Register$1;-><init>(Lcom/ghost/xianyu/Register;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->timeHd:Landroid/os/Handler;

    .line 393
    new-instance v0, Lcom/ghost/xianyu/Register$2;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Register$2;-><init>(Lcom/ghost/xianyu/Register;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method private authen()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u6ce8\u518c\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 422
    new-instance v0, Lcom/ghost/xianyu/Register$6;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Register$6;-><init>(Lcom/ghost/xianyu/Register;)V

    .line 435
    invoke-virtual {v0}, Lcom/ghost/xianyu/Register$6;->start()V

    .line 436
    return-void
.end method

.method private goBack()V
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->finish()V

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    .line 462
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c\u65b0\u7528\u6237"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->userLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private jumpToUserLayout()V
    .locals 4

    .prologue
    .line 439
    const/4 v2, 0x1

    iput v2, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    .line 440
    iget-object v2, p0, Lcom/ghost/xianyu/Register;->userLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/ghost/xianyu/Register;->basicLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-object v2, p0, Lcom/ghost/xianyu/Register;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u5b8c\u5584\u4fe1\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    .line 445
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/ghost/xianyu/Register;->COLLEGE_NAME_ARR:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 451
    return-void

    .line 446
    :cond_0
    new-instance v0, Lcom/ghost/xianyu/util/College;

    invoke-direct {v0}, Lcom/ghost/xianyu/util/College;-><init>()V

    .line 447
    .local v0, cl:Lcom/ghost/xianyu/util/College;
    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/ghost/xianyu/util/College;->id:I

    .line 448
    sget-object v2, Lcom/ghost/xianyu/Register;->COLLEGE_NAME_ARR:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/ghost/xianyu/util/College;->name:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/ghost/xianyu/Register;->collegeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showGeneral()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method private showSpinner()V
    .locals 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/ghost/xianyu/Register$MyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ghost/xianyu/Register$MyAdapter;-><init>(Lcom/ghost/xianyu/Register;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->myAdapter:Lcom/ghost/xianyu/Register$MyAdapter;

    .line 470
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->listView:Landroid/widget/ListView;

    .line 471
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->myAdapter:Lcom/ghost/xianyu/Register$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 474
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    .line 475
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->popWd:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getCode()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghost/xianyu/util/ValidityCheck;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const-string v0, "\u8f93\u5165\u7684\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->timeTask()V

    .line 261
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->sendMess()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f090066

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->confirmRegBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->womanRdBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 516
    iget-object v1, p0, Lcom/ghost/xianyu/Register;->manRdBtn:Landroid/widget/RadioButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 490
    :sswitch_0
    invoke-direct {p0}, Lcom/ghost/xianyu/Register;->goBack()V

    goto :goto_0

    .line 493
    :sswitch_1
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->getCode()V

    goto :goto_0

    .line 496
    :sswitch_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->validateBasicInfo()V

    goto :goto_0

    .line 499
    :sswitch_3
    invoke-direct {p0}, Lcom/ghost/xianyu/Register;->showGeneral()V

    goto :goto_0

    .line 502
    :sswitch_4
    invoke-direct {p0}, Lcom/ghost/xianyu/Register;->showSpinner()V

    goto :goto_0

    .line 505
    :sswitch_5
    invoke-virtual {p0}, Lcom/ghost/xianyu/Register;->validateUserInfo()V

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x7f09005f -> :sswitch_0
        0x7f090062 -> :sswitch_1
        0x7f090067 -> :sswitch_3
        0x7f090068 -> :sswitch_2
        0x7f090070 -> :sswitch_4
        0x7f090072 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/ghost/xianyu/Register;->requestWindowFeature(I)Z

    .line 128
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->setContentView(I)V

    .line 130
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    .line 131
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->generalTv:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->titleTv:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->phoneEt:Landroid/widget/EditText;

    .line 134
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->codeEt:Landroid/widget/EditText;

    .line 135
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->psdEt:Landroid/widget/EditText;

    .line 136
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->rePasswordEt:Landroid/widget/EditText;

    .line 137
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->userNameEt:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->emailEt:Landroid/widget/EditText;

    .line 139
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->dormEt:Landroid/widget/EditText;

    .line 140
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    .line 141
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->confirmRegBtn:Landroid/widget/Button;

    .line 142
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->okBtn:Landroid/widget/Button;

    .line 143
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    .line 144
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->womanRdBtn:Landroid/widget/RadioButton;

    .line 145
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->manRdBtn:Landroid/widget/RadioButton;

    .line 146
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->genderRdGroup:Landroid/widget/RadioGroup;

    .line 147
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->backImgV:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->spinnerImgV:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->agreeCb:Landroid/widget/CheckBox;

    .line 150
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->basicLayout:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->userLayout:Landroid/widget/LinearLayout;

    .line 153
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->generalTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->getCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->confirmRegBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->backImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->agreeCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->spinnerImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->genderRdGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ghost/xianyu/Register$3;

    invoke-direct {v1, p0}, Lcom/ghost/xianyu/Register$3;-><init>(Lcom/ghost/xianyu/Register;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 172
    if-eqz p1, :cond_2

    .line 173
    const-string v0, "current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    .line 174
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    .line 175
    iget v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    if-nez v0, :cond_1

    .line 176
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    .line 177
    const-string v0, "set_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    .line 178
    const-string v0, "reinput_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    .line 179
    const-string v0, "isAgree"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghost/xianyu/Register;->isAgree:Z

    .line 193
    :goto_0
    iget v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->basicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->userLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c\u65b0\u7528\u6237"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->codeEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->psdEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->rePasswordEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->agreeCb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/ghost/xianyu/Register;->isAgree:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->userName:Ljava/lang/String;

    .line 182
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    .line 183
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    .line 184
    const-string v0, "dorm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    .line 185
    const-string v0, "collegeId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    goto :goto_0

    .line 188
    :cond_2
    iput-boolean v3, p0, Lcom/ghost/xianyu/Register;->isAgree:Z

    .line 189
    iput v2, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    .line 190
    const-string v0, "\u5973"

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->basicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->userLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u5584\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->emailEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->dormEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    const-string v1, "\u5973"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->womanRdBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->manRdBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    :goto_2
    iget v0, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->collegeBtn:Landroid/widget/Button;

    sget-object v1, Lcom/ghost/xianyu/Register;->COLLEGE_NAME_ARR:[Ljava/lang/String;

    iget v2, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->womanRdBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->manRdBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    const-string v0, "current_mode"

    iget v1, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    iget v0, p0, Lcom/ghost/xianyu/Register;->currentMode:I

    if-nez v0, :cond_0

    .line 227
    const-string v0, "phone"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "code"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->codeEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "set_password"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->psdEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "reinput_password"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->rePasswordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "isAgree"

    iget-boolean v1, p0, Lcom/ghost/xianyu/Register;->isAgree:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "userName"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "email"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->emailEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "dorm"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->dormEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "gender"

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "collegeId"

    iget v1, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public sendMess()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u53d1\u9001\u8bf7\u6c42..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 290
    new-instance v0, Lcom/ghost/xianyu/Register$5;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Register$5;-><init>(Lcom/ghost/xianyu/Register;)V

    .line 304
    invoke-virtual {v0}, Lcom/ghost/xianyu/Register$5;->start()V

    .line 305
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void
.end method

.method public timeTask()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/ghost/xianyu/Register$4;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Register$4;-><init>(Lcom/ghost/xianyu/Register;)V

    .line 284
    invoke-virtual {v0}, Lcom/ghost/xianyu/Register$4;->start()V

    .line 285
    return-void
.end method

.method public validateBasicInfo()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->codeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->psdEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->rePasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghost/xianyu/util/ValidityCheck;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const-string v0, "\u8f93\u5165\u7684\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u6fc0\u6d3b\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->code:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->returnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    const-string v0, "\u8f93\u5165\u77ed\u4fe1\u6fc0\u6d3b\u7801\u6709\u8bef"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_6

    .line 339
    :cond_5
    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e3a6-20\u4e4b\u95f4"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    const-string v0, "\u8bf7\u518d\u6b21\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->rePassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghost/xianyu/Register;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 349
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_8
    invoke-direct {p0}, Lcom/ghost/xianyu/Register;->jumpToUserLayout()V

    goto :goto_0
.end method

.method public validateUserInfo()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->userName:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->emailEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->dormEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->userName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u59d3\u540d"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u90ae\u7bb1"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghost/xianyu/util/ValidityCheck;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    const-string v0, "\u8f93\u5165\u7684\u90ae\u7bb1\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    iget v0, p0, Lcom/ghost/xianyu/Register;->collegeId:I

    if-nez v0, :cond_3

    .line 377
    const-string v0, "\u8bf7\u9009\u62e9\u6240\u5728\u5b66\u6821"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->dorm:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    const-string v0, "\u8bf7\u8f93\u5165\u6240\u5728\u5bbf\u820d"

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Register;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/ghost/xianyu/Register;->authHd:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 390
    :cond_5
    invoke-direct {p0}, Lcom/ghost/xianyu/Register;->authen()V

    goto :goto_0
.end method
