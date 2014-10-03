.class public Lcom/ghost/xianyu/util/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field private static db_name:Ljava/lang/String;

.field private static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "my.db"

    sput-object v0, Lcom/ghost/xianyu/util/DbHelper;->db_name:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/ghost/xianyu/util/DbHelper;->version:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    sget-object v0, Lcom/ghost/xianyu/util/DbHelper;->db_name:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/ghost/xianyu/util/DbHelper;->version:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public deleteShopping(Ljava/util/List;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, flag:Z
    const/4 v0, 0x0

    .line 59
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/ghost/xianyu/util/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 63
    const/4 v1, 0x1

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    :cond_0
    :goto_1
    return v1

    .line 60
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 61
    .local v2, id:Ljava/lang/Integer;
    const-string v4, "shopping"

    const-string v5, " id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v2           #id:Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v3

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    :cond_2
    throw v3
.end method

.method public insertShopping(Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "values"

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, flag:Z
    const-wide/16 v2, -0x1

    .line 40
    .local v2, id:J
    const/4 v0, 0x0

    .line 42
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/ghost/xianyu/util/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    const-string v4, "shopping"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 44
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_0
    :goto_1
    return v1

    .line 44
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v4

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v4

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 51
    :cond_2
    throw v4
.end method

.method public listShopping()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ghost/xianyu/util/Shopping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v20, list:Ljava/util/List;,"Ljava/util/List<Lcom/ghost/xianyu/util/Shopping;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ghost/xianyu/util/DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 79
    const-string v3, "shopping"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 81
    .local v18, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-nez v21, :cond_1

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    .end local v18           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-object v20

    .line 82
    .restart local v18       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    const-string v21, "DbHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " id = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 84
    .local v4, id:I
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, num_iid:Ljava/lang/String;
    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, detail_url:Ljava/lang/String;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, store:Ljava/lang/String;
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, title:Ljava/lang/String;
    const/16 v21, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, pic_url:Ljava/lang/String;
    const/16 v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, price:Ljava/lang/String;
    const/16 v21, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, promo_price:Ljava/lang/String;
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, nick:Ljava/lang/String;
    const/16 v21, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, sku_id:Ljava/lang/String;
    const/16 v21, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, quantity:Ljava/lang/String;
    const/16 v21, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, props_str:Ljava/lang/String;
    const/16 v21, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, promo_type:Ljava/lang/String;
    const/16 v21, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 98
    .local v17, message:Ljava/lang/String;
    new-instance v3, Lcom/ghost/xianyu/util/Shopping;

    invoke-direct/range {v3 .. v17}, Lcom/ghost/xianyu/util/Shopping;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v3, shopping:Lcom/ghost/xianyu/util/Shopping;
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 102
    .end local v3           #shopping:Lcom/ghost/xianyu/util/Shopping;
    .end local v4           #id:I
    .end local v5           #num_iid:Ljava/lang/String;
    .end local v6           #detail_url:Ljava/lang/String;
    .end local v7           #store:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #pic_url:Ljava/lang/String;
    .end local v10           #price:Ljava/lang/String;
    .end local v11           #promo_price:Ljava/lang/String;
    .end local v12           #nick:Ljava/lang/String;
    .end local v13           #sku_id:Ljava/lang/String;
    .end local v14           #quantity:Ljava/lang/String;
    .end local v15           #props_str:Ljava/lang/String;
    .end local v16           #promo_type:Ljava/lang/String;
    .end local v17           #message:Ljava/lang/String;
    .end local v18           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 103
    .local v19, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 104
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_2
    throw v21
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 26
    const-string v0, "create table shopping (id integer primary key autoincrement, num_iid text, detail_url text, store text, title text, pic_url text, price text, promo_price text, nick text, sku_id text, quantity text, props_str text, promo_type text,message text);"

    .line 28
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 35
    return-void
.end method
