.class public Lcom/ghost/xianyu/Login;
.super Landroid/app/Activity;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final EMPTY_PASSWORD:I = -0x1

.field static final EMPTY_PHONE:I = -0x2

.field static final FAILURE:I = 0x2

.field static final FREEZE_ACCOUNT:I = 0x3

.field static final NO_NETWORK:I = -0x3

.field static final SUCCESS:I = 0x1

.field static final WRONG_PHONE:I


# instance fields
.field authHd:Landroid/os/Handler;

.field authPd:Landroid/app/ProgressDialog;

.field findPasswordTv:Landroid/widget/TextView;

.field isRemember:Z

.field loginBtn:Landroid/widget/Button;

.field password:Ljava/lang/String;

.field passwordEt:Landroid/widget/EditText;

.field phoneEt:Landroid/widget/EditText;

.field phoneNum:Ljava/lang/String;

.field registerTv:Landroid/widget/TextView;

.field rememberCb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/ghost/xianyu/Login$1;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Login$1;-><init>(Lcom/ghost/xianyu/Login;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public authen()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghost/xianyu/util/ValidityCheck;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p0}, Lcom/ghost/xianyu/internet/NetworkConnection;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authHd:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 195
    :cond_3
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    .line 196
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u767b\u5f55..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/ghost/xianyu/Login;->authPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 199
    new-instance v0, Lcom/ghost/xianyu/Login$2;

    invoke-direct {v0, p0}, Lcom/ghost/xianyu/Login$2;-><init>(Lcom/ghost/xianyu/Login;)V

    .line 216
    invoke-virtual {v0}, Lcom/ghost/xianyu/Login$2;->start()V

    goto :goto_0
.end method

.method public jumpToFindPassword()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/PasswrodRetake;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Login;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public jumpToMain()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Login;->startActivity(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/ghost/xianyu/Login;->finish()V

    .line 243
    return-void
.end method

.method public jumpToRegister()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghost/xianyu/Register;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ghost/xianyu/Login;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 255
    iput-boolean p2, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    .line 256
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/ghost/xianyu/Login;->authen()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/ghost/xianyu/Login;->jumpToRegister()V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {p0}, Lcom/ghost/xianyu/Login;->jumpToFindPassword()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f090038
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v6}, Lcom/ghost/xianyu/Login;->requestWindowFeature(I)Z

    .line 96
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->setContentView(I)V

    .line 98
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->phoneEt:Landroid/widget/EditText;

    .line 99
    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->passwordEt:Landroid/widget/EditText;

    .line 100
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->rememberCb:Landroid/widget/CheckBox;

    .line 101
    const v2, 0x7f09003a

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->findPasswordTv:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->registerTv:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/ghost/xianyu/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->loginBtn:Landroid/widget/Button;

    .line 105
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->rememberCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->findPasswordTv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->registerTv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    .line 112
    const-string v2, "password"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    .line 113
    const-string v2, "isRemember"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->phoneEt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-boolean v2, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->passwordEt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->rememberCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    :cond_0
    :goto_1
    return-void

    .line 115
    :cond_1
    const-string v2, "user_info"

    invoke-virtual {p0, v2, v5}, Lcom/ghost/xianyu/Login;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "isRemember"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    .line 117
    const-string v2, "phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    .line 118
    iget-boolean v2, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    if-eqz v2, :cond_2

    .line 120
    :try_start_0
    sget-object v2, Lcom/ghost/xianyu/encrytion/AESEncryptor;->MAK:Ljava/lang/String;

    const-string v3, "password"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ghost/xianyu/encrytion/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    goto :goto_0

    .line 136
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v2, p0, Lcom/ghost/xianyu/Login;->rememberCb:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/ghost/xianyu/Login;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "phone"

    iget-object v1, p0, Lcom/ghost/xianyu/Login;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "password"

    iget-object v1, p0, Lcom/ghost/xianyu/Login;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "isRemember"

    iget-object v1, p0, Lcom/ghost/xianyu/Login;->rememberCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public saveUserInfo()V
    .locals 6

    .prologue
    .line 220
    const-string v4, "user_info"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/ghost/xianyu/Login;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 221
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 222
    .local v1, et:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sessionId"

    sget-object v5, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string v4, "isRemember"

    iget-boolean v5, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v4, "isLogin"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string v4, "phone"

    iget-object v5, p0, Lcom/ghost/xianyu/Login;->phoneNum:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    iget-boolean v4, p0, Lcom/ghost/xianyu/Login;->isRemember:Z

    if-eqz v4, :cond_0

    .line 229
    :try_start_0
    sget-object v4, Lcom/ghost/xianyu/encrytion/AESEncryptor;->MAK:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghost/xianyu/Login;->password:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ghost/xianyu/encrytion/AESEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, psdTmp:Ljava/lang/String;
    const-string v4, "password"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v3           #psdTmp:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "password"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
