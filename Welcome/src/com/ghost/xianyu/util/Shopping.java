package com.ghost.xianyu.util;

public class Shopping
{
  public String detail_url;
  public int id;
  public boolean isCheck;
  public String message;
  public String nick;
  public String num_iid;
  public String pic_url;
  public String price;
  public String promo_price;
  public String promo_type;
  public String props_alias;
  public String props_str;
  public String quantity;
  public String sku_id;
  public String store;
  public String title;

  public Shopping(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13)
  {
    this.id = paramInt;
    this.num_iid = paramString1;
    this.detail_url = paramString2;
    this.store = paramString3;
    this.title = paramString4;
    this.pic_url = paramString5;
    this.price = paramString6;
    this.promo_price = paramString7;
    this.nick = paramString8;
    this.sku_id = paramString9;
    this.quantity = paramString10;
    this.props_str = paramString11;
    this.props_alias = paramString11;
    this.promo_type = paramString12;
    this.message = paramString13;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.Shopping
 * JD-Core Version:    0.6.2
 */