package com.ghost.xianyu.util;

import java.util.ArrayList;
import java.util.HashMap;

public class Property
{
  public HashMap<String, String> hashMap;
  public String prop_id;
  public ArrayList<PropValue> prop_list;
  public String prop_name;
  public int selectId;
  public ArrayList<String> tmp_list;

  public Property(String paramString1, String paramString2)
  {
    this.prop_id = paramString1;
    this.prop_name = paramString2;
    this.selectId = -1;
    this.prop_list = new ArrayList();
    this.tmp_list = new ArrayList();
    this.hashMap = new HashMap();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.Property
 * JD-Core Version:    0.6.2
 */