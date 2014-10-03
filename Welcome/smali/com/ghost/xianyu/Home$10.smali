.class Lcom/ghost/xianyu/Home$10;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Lcom/taobao/top/android/api/TopTqlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghost/xianyu/Home;->parseInfo()V
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
    iput-object p1, p0, Lcom/ghost/xianyu/Home$10;->this$0:Lcom/ghost/xianyu/Home;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 55
    .parameter "result"

    .prologue
    .line 648
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_0

    .line 850
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v50, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, array:[Ljava/lang/String;
    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    const/16 v50, 0x0

    aget-object v50, v10, v50

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 657
    .local v23, json1:Lorg/json/JSONObject;
    const-string v50, "item_get_response"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 658
    .local v18, j0:Lorg/json/JSONObject;
    if-eqz v18, :cond_3

    .line 659
    const-string v50, "item"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 660
    if-eqz v18, :cond_3

    .line 661
    const-string v50, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->title:Ljava/lang/String;

    .line 662
    const-string v50, "detail_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->detail_url:Ljava/lang/String;

    .line 663
    sget-object v50, Lcom/ghost/xianyu/Home;->detail_url:Ljava/lang/String;

    const-string v51, "taobao.com"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_5

    .line 664
    const-string v50, "taobao"

    sput-object v50, Lcom/ghost/xianyu/Home;->store:Ljava/lang/String;

    .line 667
    :goto_1
    const-string v50, "nick"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->nick:Ljava/lang/String;

    .line 668
    const-string v50, "pic_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->pic_url:Ljava/lang/String;

    .line 669
    const-string v50, "num"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->num:Ljava/lang/String;

    .line 670
    const-string v50, "price"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->price:Ljava/lang/String;

    .line 671
    const-string v50, "freight_payer"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->freight_payer:Ljava/lang/String;

    .line 672
    const-string v50, "post_fee"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->post_fee:Ljava/lang/String;

    .line 673
    const-string v50, "express_fee"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->express_fee:Ljava/lang/String;

    .line 674
    const-string v50, "ems_fee"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->ems_fee:Ljava/lang/String;

    .line 675
    const-string v50, "stuff_status"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->stuff_status:Ljava/lang/String;

    .line 676
    const-string v50, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->type:Ljava/lang/String;

    .line 677
    const-string v50, "property_alias"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->property_alias:Ljava/lang/String;

    .line 678
    const-string v50, "location"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 679
    .local v28, location_json:Lorg/json/JSONObject;
    const-string v50, "state"

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->location_state:Ljava/lang/String;

    .line 680
    const-string v50, "city"

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->location_city:Ljava/lang/String;

    .line 682
    const-string v50, "skus"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 683
    .local v19, j1:Lorg/json/JSONObject;
    if-eqz v19, :cond_1

    .line 684
    const-string v50, "sku"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 685
    .local v21, j_array:Lorg/json/JSONArray;
    const/16 v50, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 686
    .local v22, j_tmp:Lorg/json/JSONObject;
    const-string v50, "properties_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 687
    .local v43, prop_names_tmp:Ljava/lang/String;
    const-string v50, ";"

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 689
    .local v42, prop_names_array_tmp:[Ljava/lang/String;
    const/16 v29, 0x0

    .local v29, m:I
    :goto_2
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v29

    move/from16 v1, v50

    if-lt v0, v1, :cond_6

    .line 699
    const/16 v25, 0x0

    .local v25, k:I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v50

    move/from16 v0, v25

    move/from16 v1, v50

    if-lt v0, v1, :cond_7

    .line 729
    .end local v21           #j_array:Lorg/json/JSONArray;
    .end local v22           #j_tmp:Lorg/json/JSONObject;
    .end local v25           #k:I
    .end local v29           #m:I
    .end local v42           #prop_names_array_tmp:[Ljava/lang/String;
    .end local v43           #prop_names_tmp:Ljava/lang/String;
    :cond_1
    sget-object v50, Lcom/ghost/xianyu/Home;->property_alias:Ljava/lang/String;

    const-string v51, ""

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_2

    .line 730
    sget-object v50, Lcom/ghost/xianyu/Home;->property_alias:Ljava/lang/String;

    const-string v51, ";"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 731
    .local v35, propArray:[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v27, v0

    .line 732
    .local v27, length:I
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v47

    .line 733
    .local v47, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    move/from16 v0, v27

    if-lt v13, v0, :cond_b

    .line 753
    .end local v13           #i:I
    .end local v27           #length:I
    .end local v35           #propArray:[Ljava/lang/String;
    .end local v47           #size:I
    :cond_2
    const/4 v13, 0x0

    .restart local v13       #i:I
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v26

    .local v26, l:I
    :goto_5
    move/from16 v0, v26

    if-lt v13, v0, :cond_10

    .line 768
    .end local v13           #i:I
    .end local v19           #j1:Lorg/json/JSONObject;
    .end local v26           #l:I
    .end local v28           #location_json:Lorg/json/JSONObject;
    :cond_3
    new-instance v24, Lorg/json/JSONObject;

    const/16 v50, 0x1

    aget-object v50, v10, v50

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 769
    .local v24, json2:Lorg/json/JSONObject;
    const-string v50, "ump_promotion_get_response"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 770
    .local v34, promo_json:Lorg/json/JSONObject;
    if-eqz v34, :cond_17

    .line 771
    const-string v50, "promotions"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 772
    const-string v50, "promotion_in_item"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v34

    .line 776
    :try_start_1
    const-string v50, "promotion_in_item"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    .line 777
    .local v33, promo_jArray:Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_6
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v50

    move/from16 v0, v50

    if-lt v13, v0, :cond_12

    .line 849
    .end local v13           #i:I
    .end local v18           #j0:Lorg/json/JSONObject;
    .end local v23           #json1:Lorg/json/JSONObject;
    .end local v24           #json2:Lorg/json/JSONObject;
    .end local v33           #promo_jArray:Lorg/json/JSONArray;
    .end local v34           #promo_json:Lorg/json/JSONObject;
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/Home$10;->this$0:Lcom/ghost/xianyu/Home;

    move-object/from16 v50, v0

    #getter for: Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;
    invoke-static/range {v50 .. v50}, Lcom/ghost/xianyu/Home;->access$7(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 666
    .restart local v18       #j0:Lorg/json/JSONObject;
    .restart local v23       #json1:Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    const-string v50, "tmall"

    sput-object v50, Lcom/ghost/xianyu/Home;->store:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 845
    .end local v18           #j0:Lorg/json/JSONObject;
    .end local v23           #json1:Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 847
    .local v12, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ghost/xianyu/Home$10;->this$0:Lcom/ghost/xianyu/Home;

    move-object/from16 v50, v0

    #getter for: Lcom/ghost/xianyu/Home;->handler:Landroid/os/Handler;
    invoke-static/range {v50 .. v50}, Lcom/ghost/xianyu/Home;->access$7(Lcom/ghost/xianyu/Home;)Landroid/os/Handler;

    move-result-object v50

    const/16 v51, -0x1

    invoke-virtual/range {v50 .. v51}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 690
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v18       #j0:Lorg/json/JSONObject;
    .restart local v19       #j1:Lorg/json/JSONObject;
    .restart local v21       #j_array:Lorg/json/JSONArray;
    .restart local v22       #j_tmp:Lorg/json/JSONObject;
    .restart local v23       #json1:Lorg/json/JSONObject;
    .restart local v28       #location_json:Lorg/json/JSONObject;
    .restart local v29       #m:I
    .restart local v42       #prop_names_array_tmp:[Ljava/lang/String;
    .restart local v43       #prop_names_tmp:Ljava/lang/String;
    :cond_6
    :try_start_3
    aget-object v50, v42, v29

    const-string v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .line 691
    .local v48, tmp:[Ljava/lang/String;
    const/16 v50, 0x0

    aget-object v39, v48, v50

    .line 692
    .local v39, prop_id:Ljava/lang/String;
    const/16 v50, 0x2

    aget-object v40, v48, v50

    .line 695
    .local v40, prop_name:Ljava/lang/String;
    new-instance v44, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/ghost/xianyu/util/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .local v44, property:Lcom/ghost/xianyu/util/Property;
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 700
    .end local v39           #prop_id:Ljava/lang/String;
    .end local v40           #prop_name:Ljava/lang/String;
    .end local v44           #property:Lcom/ghost/xianyu/util/Property;
    .end local v48           #tmp:[Ljava/lang/String;
    .restart local v25       #k:I
    :cond_7
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 701
    .local v20, j2:Lorg/json/JSONObject;
    const-string v50, "quantity"

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 702
    .local v6, quantity:J
    const-wide/16 v50, 0x0

    cmp-long v50, v6, v50

    if-nez v50, :cond_9

    .line 699
    :cond_8
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 705
    :cond_9
    const-string v50, "properties"

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 706
    .local v9, properties:Ljava/lang/String;
    const-string v50, "sku_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 707
    .local v4, sku_id:J
    const-string v50, "price"

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 712
    .local v8, sku_price:Ljava/lang/String;
    new-instance v3, Lcom/ghost/xianyu/util/Skus;

    invoke-direct/range {v3 .. v9}, Lcom/ghost/xianyu/util/Skus;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v3, skus:Lcom/ghost/xianyu/util/Skus;
    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v50, "properties_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 716
    .local v41, prop_names:Ljava/lang/String;
    const-string v50, ";"

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 718
    .local v37, propNameArray:[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_8
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v13, v0, :cond_8

    .line 719
    aget-object v50, v37, v13

    const-string v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .line 720
    .restart local v48       #tmp:[Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    const/16 v51, 0x0

    aget-object v51, v48, v51

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const/16 v51, 0x1

    aget-object v51, v48, v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const/16 v51, 0x3

    aget-object v51, v48, v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 721
    .local v36, propName:Ljava/lang/String;
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_a

    .line 722
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/ghost/xianyu/util/Property;

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 734
    .end local v3           #skus:Lcom/ghost/xianyu/util/Skus;
    .end local v4           #sku_id:J
    .end local v6           #quantity:J
    .end local v8           #sku_price:Ljava/lang/String;
    .end local v9           #properties:Ljava/lang/String;
    .end local v20           #j2:Lorg/json/JSONObject;
    .end local v21           #j_array:Lorg/json/JSONArray;
    .end local v22           #j_tmp:Lorg/json/JSONObject;
    .end local v25           #k:I
    .end local v29           #m:I
    .end local v36           #propName:Ljava/lang/String;
    .end local v37           #propNameArray:[Ljava/lang/String;
    .end local v41           #prop_names:Ljava/lang/String;
    .end local v42           #prop_names_array_tmp:[Ljava/lang/String;
    .end local v43           #prop_names_tmp:Ljava/lang/String;
    .end local v48           #tmp:[Ljava/lang/String;
    .restart local v27       #length:I
    .restart local v35       #propArray:[Ljava/lang/String;
    .restart local v47       #size:I
    :cond_b
    const/16 v17, 0x0

    .local v17, j:I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v47

    if-lt v0, v1, :cond_d

    .line 733
    :cond_c
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 735
    :cond_d
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/ghost/xianyu/util/Property;

    .line 736
    .restart local v44       #property:Lcom/ghost/xianyu/util/Property;
    aget-object v50, v35, v13

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_id:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_f

    .line 737
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    aget-object v51, v35, v13

    invoke-virtual/range {v50 .. v51}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_f

    .line 738
    aget-object v50, v35, v13

    const-string v51, ":"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 739
    .local v16, index:I
    aget-object v50, v35, v13

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 740
    .local v11, code:Ljava/lang/String;
    const/16 v29, 0x0

    .restart local v29       #m:I
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v45

    .local v45, s:I
    :goto_b
    move/from16 v0, v29

    move/from16 v1, v45

    if-ge v0, v1, :cond_c

    .line 741
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_e

    .line 742
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    aget-object v51, v35, v13

    move-object/from16 v0, v50

    move/from16 v1, v29

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 740
    :cond_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_b

    .line 734
    .end local v11           #code:Ljava/lang/String;
    .end local v16           #index:I
    .end local v29           #m:I
    .end local v45           #s:I
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 754
    .end local v17           #j:I
    .end local v27           #length:I
    .end local v35           #propArray:[Ljava/lang/String;
    .end local v44           #property:Lcom/ghost/xianyu/util/Property;
    .end local v47           #size:I
    .restart local v26       #l:I
    :cond_10
    sget-object v50, Lcom/ghost/xianyu/Home;->propertyList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/ghost/xianyu/util/Property;

    .line 756
    .restart local v44       #property:Lcom/ghost/xianyu/util/Property;
    const/16 v25, 0x0

    .restart local v25       #k:I
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v45

    .restart local v45       #s:I
    :goto_c
    move/from16 v0, v25

    move/from16 v1, v45

    if-lt v0, v1, :cond_11

    .line 753
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 757
    :cond_11
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->tmp_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    .line 758
    .local v48, tmp:Ljava/lang/String;
    const-string v50, ":"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 759
    .restart local v16       #index:I
    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 760
    .restart local v11       #code:Ljava/lang/String;
    add-int/lit8 v50, v16, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 761
    .local v30, name:Ljava/lang/String;
    new-instance v38, Lcom/ghost/xianyu/util/PropValue;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/ghost/xianyu/util/PropValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .local v38, propValue:Lcom/ghost/xianyu/util/PropValue;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ghost/xianyu/util/Property;->prop_list:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 756
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 778
    .end local v11           #code:Ljava/lang/String;
    .end local v16           #index:I
    .end local v19           #j1:Lorg/json/JSONObject;
    .end local v25           #k:I
    .end local v26           #l:I
    .end local v28           #location_json:Lorg/json/JSONObject;
    .end local v30           #name:Ljava/lang/String;
    .end local v38           #propValue:Lcom/ghost/xianyu/util/PropValue;
    .end local v44           #property:Lcom/ghost/xianyu/util/Property;
    .end local v45           #s:I
    .end local v48           #tmp:Ljava/lang/String;
    .restart local v24       #json2:Lorg/json/JSONObject;
    .restart local v33       #promo_jArray:Lorg/json/JSONArray;
    .restart local v34       #promo_json:Lorg/json/JSONObject;
    :cond_12
    :try_start_4
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v49

    .line 779
    .local v49, tmp_json:Lorg/json/JSONObject;
    const-string v50, "promotion_id"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 780
    .local v46, shopVip:Ljava/lang/String;
    const-string v50, "shopvip"

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_16

    .line 781
    const-string v50, "item_promo_price"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    .line 782
    const-string v50, "name"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    .line 783
    const-string v50, "sku_id_list"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 784
    .local v15, id_json:Lorg/json/JSONObject;
    const-string v50, "sku_price_list"

    invoke-virtual/range {v49 .. v50}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 785
    .local v32, price_json:Lorg/json/JSONObject;
    if-eqz v15, :cond_15

    if-eqz v32, :cond_15

    .line 786
    const-string v50, "string"

    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 787
    .local v14, id_array:Lorg/json/JSONArray;
    const-string v50, "price"

    move-object/from16 v0, v32

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 788
    .local v31, price_array:Lorg/json/JSONArray;
    const/16 v17, 0x0

    .restart local v17       #j:I
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v26

    .restart local v26       #l:I
    :goto_d
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 789
    const/16 v25, 0x0

    .restart local v25       #k:I
    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v45

    .restart local v45       #s:I
    :goto_e
    move/from16 v0, v25

    move/from16 v1, v45

    if-lt v0, v1, :cond_13

    .line 788
    :goto_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 790
    :cond_13
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v51

    new-instance v52, Ljava/lang/StringBuilder;

    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/ghost/xianyu/util/Skus;->sku_id:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_14

    .line 791
    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/ghost/xianyu/util/Skus;

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_f

    .line 804
    .end local v13           #i:I
    .end local v14           #id_array:Lorg/json/JSONArray;
    .end local v15           #id_json:Lorg/json/JSONObject;
    .end local v17           #j:I
    .end local v25           #k:I
    .end local v26           #l:I
    .end local v31           #price_array:Lorg/json/JSONArray;
    .end local v32           #price_json:Lorg/json/JSONObject;
    .end local v33           #promo_jArray:Lorg/json/JSONArray;
    .end local v45           #s:I
    .end local v46           #shopVip:Ljava/lang/String;
    .end local v49           #tmp_json:Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    .line 805
    .restart local v12       #e:Lorg/json/JSONException;
    :try_start_5
    const-string v50, ""

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    .line 806
    const-string v50, "0"

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_7

    .line 789
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v13       #i:I
    .restart local v14       #id_array:Lorg/json/JSONArray;
    .restart local v15       #id_json:Lorg/json/JSONObject;
    .restart local v17       #j:I
    .restart local v25       #k:I
    .restart local v26       #l:I
    .restart local v31       #price_array:Lorg/json/JSONArray;
    .restart local v32       #price_json:Lorg/json/JSONObject;
    .restart local v33       #promo_jArray:Lorg/json/JSONArray;
    .restart local v45       #s:I
    .restart local v46       #shopVip:Ljava/lang/String;
    .restart local v49       #tmp_json:Lorg/json/JSONObject;
    :cond_14
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 797
    .end local v14           #id_array:Lorg/json/JSONArray;
    .end local v17           #j:I
    .end local v25           #k:I
    .end local v26           #l:I
    .end local v31           #price_array:Lorg/json/JSONArray;
    .end local v45           #s:I
    :cond_15
    const/16 v29, 0x0

    .restart local v29       #m:I
    :try_start_6
    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v45

    .restart local v45       #s:I
    :goto_10
    move/from16 v0, v29

    move/from16 v1, v45

    if-ge v0, v1, :cond_4

    .line 798
    sget-object v50, Lcom/ghost/xianyu/Home;->skusList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/ghost/xianyu/util/Skus;

    sget-object v51, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/ghost/xianyu/util/Skus;->promo_price:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 797
    add-int/lit8 v29, v29, 0x1

    goto :goto_10

    .line 777
    .end local v15           #id_json:Lorg/json/JSONObject;
    .end local v29           #m:I
    .end local v32           #price_json:Lorg/json/JSONObject;
    .end local v45           #s:I
    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 809
    .end local v13           #i:I
    .end local v33           #promo_jArray:Lorg/json/JSONArray;
    .end local v46           #shopVip:Ljava/lang/String;
    .end local v49           #tmp_json:Lorg/json/JSONObject;
    :cond_17
    :try_start_7
    const-string v50, ""

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_type:Ljava/lang/String;

    .line 810
    const-string v50, "0"

    sput-object v50, Lcom/ghost/xianyu/Home;->promo_price:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_7
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 854
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    return-void
.end method
