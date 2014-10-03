.class Lcom/ghost/xianyu/OrderQuery$7;
.super Ljava/lang/Object;
.source "OrderQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/OrderQuery;->queryOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghost/xianyu/OrderQuery;


# direct methods
.method constructor <init>(Lcom/ghost/xianyu/OrderQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v29, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static/range {v29 .. v29}, Lcom/ghost/xianyu/OrderQuery;->access$19(Lcom/ghost/xianyu/OrderQuery;)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/internet/HttpConnection;->post_query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 248
    .local v24, response:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v21, json:Lorg/json/JSONObject;
    const-string v18, "page"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 251
    .local v23, page:Ljava/lang/String;
    if-nez v23, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    #setter for: Lcom/ghost/xianyu/OrderQuery;->hasMore:Z
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$20(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v29, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v23           #page:Ljava/lang/String;
    :goto_1
    return-void

    .line 245
    .end local v24           #response:Ljava/lang/String;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v29, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static/range {v29 .. v29}, Lcom/ghost/xianyu/OrderQuery;->access$19(Lcom/ghost/xianyu/OrderQuery;)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/internet/HttpConnection;->post_queryOther(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #response:Ljava/lang/String;
    goto :goto_0

    .line 258
    .restart local v21       #json:Lorg/json/JSONObject;
    .restart local v23       #page:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "page="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v23}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v22, pJson:Lorg/json/JSONObject;
    const-string v18, "total_count"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 261
    .local v27, total_count:Ljava/lang/String;
    const-string v18, "total_page"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 262
    .local v28, total_page:Ljava/lang/String;
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "total_count = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", total_page = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", current_page = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v30, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static/range {v30 .. v30}, Lcom/ghost/xianyu/OrderQuery;->access$19(Lcom/ghost/xianyu/OrderQuery;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 262
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$19(Lcom/ghost/xianyu/OrderQuery;)I

    move-result v18

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    #setter for: Lcom/ghost/xianyu/OrderQuery;->hasMore:Z
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$20(Lcom/ghost/xianyu/OrderQuery;Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$19(Lcom/ghost/xianyu/OrderQuery;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    #setter for: Lcom/ghost/xianyu/OrderQuery;->current_page:I
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$21(Lcom/ghost/xianyu/OrderQuery;I)V

    .line 272
    :goto_2
    const/16 v20, 0x0

    .line 273
    .local v20, i:I
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 322
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #calls: Lcom/ghost/xianyu/OrderQuery;->mergerSameTrade()V
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$22(Lcom/ghost/xianyu/OrderQuery;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    .end local v20           #i:I
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v22           #pJson:Lorg/json/JSONObject;
    .end local v23           #page:Ljava/lang/String;
    .end local v27           #total_count:Ljava/lang/String;
    .end local v28           #total_page:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isRefresh:Z
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$2(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 269
    .restart local v21       #json:Lorg/json/JSONObject;
    .restart local v22       #pJson:Lorg/json/JSONObject;
    .restart local v23       #page:Ljava/lang/String;
    .restart local v27       #total_count:Ljava/lang/String;
    .restart local v28       #total_page:Ljava/lang/String;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    #setter for: Lcom/ghost/xianyu/OrderQuery;->hasMore:Z
    invoke-static {v0, v1}, Lcom/ghost/xianyu/OrderQuery;->access$20(Lcom/ghost/xianyu/OrderQuery;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 323
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v22           #pJson:Lorg/json/JSONObject;
    .end local v23           #page:Ljava/lang/String;
    .end local v27           #total_count:Ljava/lang/String;
    .end local v28           #total_page:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 324
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 275
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v20       #i:I
    .restart local v21       #json:Lorg/json/JSONObject;
    .restart local v22       #pJson:Lorg/json/JSONObject;
    .restart local v23       #page:Ljava/lang/String;
    .restart local v27       #total_count:Ljava/lang/String;
    .restart local v28       #total_page:Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 277
    .local v25, tmp:Ljava/lang/String;
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "tmp = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    .local v26, tmpJson:Lorg/json/JSONObject;
    const-string v18, "id"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, id:Ljava/lang/String;
    const-string v18, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, status:Ljava/lang/String;
    const-string v18, "seller_nick"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, nick:Ljava/lang/String;
    const-string v18, "item_title"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, title:Ljava/lang/String;
    const-string v18, "item_img_url"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, pic_url:Ljava/lang/String;
    const-string v18, "item_props_detail"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, props_str:Ljava/lang/String;
    const-string v18, "&nbsp;"

    const-string v29, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    const-string v18, "quantity"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, quantity:Ljava/lang/String;
    const-string v18, "order_price"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, price:Ljava/lang/String;
    const-string v18, "order_promo_price"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, promo_price:Ljava/lang/String;
    const-string v18, "order_total_price"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, total_price:Ljava/lang/String;
    const-string v18, "status_caption"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, status_caption:Ljava/lang/String;
    const-string v18, "message"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, message:Ljava/lang/String;
    const-string v18, "express_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, express_id:Ljava/lang/String;
    const-string v18, "express_company"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 294
    .local v17, express_company:Ljava/lang/String;
    const-string v4, ""

    .line 295
    .local v4, trade_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 296
    const-string v18, "trade_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    :goto_6
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "id = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", status = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "trade_id = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "nick = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", title = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "pic_url = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", props_str="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "price = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", promo_price="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "total_price = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 305
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 304
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "quantity = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", status_caption="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v18, "OrderQuery"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "express id = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", company ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v2, Lcom/ghost/xianyu/util/OrderInfo;

    .line 310
    const/16 v18, 0x0

    .line 308
    invoke-direct/range {v2 .. v18}, Lcom/ghost/xianyu/util/OrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    .local v2, orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    #getter for: Lcom/ghost/xianyu/OrderQuery;->isSelectTaobao:Z
    invoke-static/range {v18 .. v18}, Lcom/ghost/xianyu/OrderQuery;->access$7(Lcom/ghost/xianyu/OrderQuery;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->taobaoOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 298
    .end local v2           #orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    :cond_4
    const-string v18, "order_combine_number"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 314
    .restart local v2       #orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->otherOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 317
    .end local v2           #orderInfo:Lcom/ghost/xianyu/util/OrderInfo;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #trade_id:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #nick:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #pic_url:Ljava/lang/String;
    .end local v9           #props_str:Ljava/lang/String;
    .end local v10           #quantity:Ljava/lang/String;
    .end local v11           #price:Ljava/lang/String;
    .end local v12           #promo_price:Ljava/lang/String;
    .end local v13           #total_price:Ljava/lang/String;
    .end local v14           #status_caption:Ljava/lang/String;
    .end local v15           #message:Ljava/lang/String;
    .end local v16           #express_id:Ljava/lang/String;
    .end local v17           #express_company:Ljava/lang/String;
    .end local v25           #tmp:Ljava/lang/String;
    .end local v26           #tmpJson:Lorg/json/JSONObject;
    :catch_1
    move-exception v19

    .line 318
    .local v19, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 331
    .end local v19           #e:Lorg/json/JSONException;
    .end local v20           #i:I
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v22           #pJson:Lorg/json/JSONObject;
    .end local v23           #page:Ljava/lang/String;
    .end local v27           #total_count:Ljava/lang/String;
    .end local v28           #total_page:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery$7;->this$0:Lcom/ghost/xianyu/OrderQuery;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ghost/xianyu/OrderQuery;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
