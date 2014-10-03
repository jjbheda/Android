package com.ghost.xianyu.util;

public class OrderInfo
{
  public String express_company;
  public String express_id;
  public String id;
  public String message;
  public String nick;
  public String pic_url;
  public String price;
  public String promo_price;
  public String props_str;
  public String quantity;
  public int sequence;
  public String status;
  public String status_caption;
  public String title;
  public String total_price;
  public String trade_id;

  public OrderInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, int paramInt)
  {
    this.id = paramString1;
    this.trade_id = paramString2;
    this.status = paramString3;
    this.nick = paramString4;
    this.title = paramString5;
    this.pic_url = paramString6;
    this.props_str = paramString7;
    this.quantity = paramString8;
    this.price = paramString9;
    this.promo_price = paramString10;
    this.total_price = paramString11;
    this.status_caption = paramString12;
    this.message = paramString13;
    this.express_id = paramString14;
    this.express_company = paramString15;
    this.sequence = paramInt;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.OrderInfo
 * JD-Core Version:    0.6.2
 */