package com.ghost.xianyu.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DbHelper extends SQLiteOpenHelper
{
  private static String db_name = "my.db";
  private static int version = 1;

  public DbHelper(Context paramContext)
  {
    super(paramContext, db_name, null, version);
  }

  public boolean deleteShopping(List<Integer> paramList)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      localSQLiteDatabase = getWritableDatabase();
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        boolean bool2 = localIterator.hasNext();
        if (!bool2)
        {
          bool1 = true;
          return bool1;
        }
        Integer localInteger = (Integer)localIterator.next();
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localInteger;
        localSQLiteDatabase.delete("shopping", " id = ? ", arrayOfString);
      }
    }
    catch (Exception localException)
    {
      boolean bool1 = false;
      return false;
    }
    finally
    {
      if (localSQLiteDatabase != null)
        localSQLiteDatabase.close();
    }
  }

  // ERROR //
  public boolean insertShopping(android.content.ContentValues paramContentValues)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 29	com/ghost/xianyu/util/DbHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_2
    //   7: aload_2
    //   8: ldc 68
    //   10: aconst_null
    //   11: aload_1
    //   12: invokevirtual 80	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   15: lstore 6
    //   17: lload 6
    //   19: ldc2_w 81
    //   22: lcmp
    //   23: ifne +17 -> 40
    //   26: iconst_0
    //   27: istore 5
    //   29: aload_2
    //   30: ifnull +7 -> 37
    //   33: aload_2
    //   34: invokevirtual 46	android/database/sqlite/SQLiteDatabase:close	()V
    //   37: iload 5
    //   39: ireturn
    //   40: iconst_1
    //   41: istore 5
    //   43: goto -14 -> 29
    //   46: astore 4
    //   48: iconst_0
    //   49: istore 5
    //   51: aload_2
    //   52: ifnull -15 -> 37
    //   55: aload_2
    //   56: invokevirtual 46	android/database/sqlite/SQLiteDatabase:close	()V
    //   59: iconst_0
    //   60: ireturn
    //   61: astore_3
    //   62: aload_2
    //   63: ifnull +7 -> 70
    //   66: aload_2
    //   67: invokevirtual 46	android/database/sqlite/SQLiteDatabase:close	()V
    //   70: aload_3
    //   71: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	17	46	java/lang/Exception
    //   2	17	61	finally
  }

  public List<Shopping> listShopping()
  {
    ArrayList localArrayList = new ArrayList();
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      localSQLiteDatabase = getReadableDatabase();
      Cursor localCursor = localSQLiteDatabase.query("shopping", null, null, null, null, null, null);
      while (true)
      {
        boolean bool = localCursor.moveToNext();
        if (!bool)
          return localArrayList;
        Log.i("DbHelper", " id = " + localCursor.getInt(0));
        localArrayList.add(new Shopping(localCursor.getInt(0), localCursor.getString(1), localCursor.getString(2), localCursor.getString(3), localCursor.getString(4), localCursor.getString(5), localCursor.getString(6), localCursor.getString(7), localCursor.getString(8), localCursor.getString(9), localCursor.getString(10), localCursor.getString(11), localCursor.getString(12), localCursor.getString(13)));
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return localArrayList;
    }
    finally
    {
      if (localSQLiteDatabase != null)
        localSQLiteDatabase.close();
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table shopping (id integer primary key autoincrement, num_iid text, detail_url text, store text, title text, pic_url text, price text, promo_price text, nick text, sku_id text, quantity text, props_str text, promo_type text,message text);");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.DbHelper
 * JD-Core Version:    0.6.2
 */