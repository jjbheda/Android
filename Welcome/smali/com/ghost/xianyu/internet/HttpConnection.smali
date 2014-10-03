.class public Lcom/ghost/xianyu/internet/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field public static final TYPE_FIND_PASSWORD1:I = 0x4

.field public static final TYPE_FIND_PASSWORD2:I = 0x5

.field public static final TYPE_LOGIN:I = 0x1

.field public static final TYPE_REGISTER1:I = 0x2

.field public static final TYPE_REGISTER2:I = 0x3

.field public static final URL_APK:Ljava/lang/String; = "http://www.xianyunet.com/downloads/XianYu.apk"

.field static final URL_CANCEL_ORDER1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=taobaoOrderCancel"

.field static final URL_CANCEL_ORDER2:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=otherOrderCancel"

.field static final URL_FIND_PASSWORD1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD1"

.field static final URL_FIND_PASSWORD2:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD2"

.field static final URL_LOGIN:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=login"

.field static final URL_ORDER_SUBMIT1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=orderSubmit"

.field static final URL_ORDER_SUBMIT2:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=orderSubmit"

.field static final URL_QUERY1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidAccount&a=myTaobaoOrder"

.field static final URL_QUERY2:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidAccount&a=myOtherOrder"

.field static final URL_QUERY_EXPRESS:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=getExpressInfo"

.field static final URL_REGISTER1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=getPhoneValideCode"

.field static final URL_REGISTER2:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=registerDetail"

.field static final URL_REPEAT_CONNECT:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=androidUser&a=phoneTest"

.field static final URL_SUBMIT_LINK1:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=taobaoOrder&a=itemInfo"

.field static final URL_VERSION:Ljava/lang/String; = "http://www.xianyunet.com/index.php?c=android&a=chkApkVersion"

.field public static php_sessid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v7, 0x0

    .line 161
    .local v7, response:Ljava/lang/String;
    const/4 v4, 0x0

    .line 162
    .local v4, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 163
    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4           #httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v4       #httppost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p0, :cond_0

    .line 167
    :try_start_0
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, p0, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 169
    :cond_0
    sget-object v9, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 170
    const-string v9, "HttpConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exist: php_sessid ="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v9, "Cookie"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PHPSESSID="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 175
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 176
    .local v8, statusCode:I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 178
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 179
    const-string v9, "HttpConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v9, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 181
    check-cast v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    .line 182
    .local v6, mCookieStore:Lorg/apache/http/client/CookieStore;
    invoke-interface {v6}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v5, v9, :cond_3

    .line 198
    .end local v0           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #i:I
    .end local v6           #mCookieStore:Lorg/apache/http/client/CookieStore;
    .end local v8           #statusCode:I
    :cond_2
    :goto_1
    return-object v7

    .line 185
    .restart local v0       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #i:I
    .restart local v6       #mCookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v8       #statusCode:I
    :cond_3
    const-string v10, "HttpConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v9, "name = "

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v10, "PHPSESSID"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 188
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    .line 189
    const-string v9, "HttpConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "php_sessid = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/ghost/xianyu/internet/HttpConnection;->php_sessid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v0           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #i:I
    .end local v6           #mCookieStore:Lorg/apache/http/client/CookieStore;
    .end local v8           #statusCode:I
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #i:I
    .restart local v6       #mCookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v8       #statusCode:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static post_cancelOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=taobaoOrderCancel"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_cancelOtherOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v1, "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=otherOrderCancel"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_findPassword1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNum"

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD1"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_findPassword2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNum"
    .parameter "password"

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD2"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNum"
    .parameter "password"

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "http://www.xianyunet.com/index.php?c=androidUser&a=login"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_orderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;
    .locals 4
    .parameter "shopping"

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "store_id"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_id"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->num_iid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_url"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->detail_url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_title"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_img_url"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->pic_url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "order_price"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "order_promo_price"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->promo_price:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "seller_nick"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->nick:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_sku_id"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->sku_id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "quantity"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_props_detail"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->props_str:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "promo_type"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->promo_type:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "message"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=orderSubmit"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_otherOrderSubmit(Lcom/ghost/xianyu/util/Shopping;)Ljava/lang/String;
    .locals 4
    .parameter "shopping"

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "store_id"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->store:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_url"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->detail_url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_title"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->title:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "order_price"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->price:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "quantity"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->quantity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "item_props_detail"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->props_str:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "message"

    iget-object v3, p0, Lcom/ghost/xianyu/util/Shopping;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v1, "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=orderSubmit"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_query(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 99
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.xianyunet.com/index.php?c=androidAccount&a=myTaobaoOrder&page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post_queryExpress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "express_id"
    .parameter "express_company"

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "express_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "express_company"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=getExpressInfo"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_queryOther(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 103
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.xianyunet.com/index.php?c=androidAccount&a=myOtherOrder&page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post_register1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNum"

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "http://www.xianyunet.com/index.php?c=androidUser&a=getPhoneValideCode"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_register2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNum"
    .parameter "userName"
    .parameter "password"
    .parameter "gender"
    .parameter "email"
    .parameter "sid"
    .parameter "dormitory"

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "real_name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "gender"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "dormitory"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "http://www.xianyunet.com/index.php?c=androidUser&a=registerDetail"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_submitLink1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "http://www.xianyunet.com/index.php?c=taobaoOrder&a=itemInfo"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static post_version()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    const-string v1, "http://www.xianyunet.com/index.php?c=android&a=chkApkVersion"

    invoke-static {v0, v1}, Lcom/ghost/xianyu/internet/HttpConnection;->post(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
