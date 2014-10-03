package com.ghost.xianyu.util;

public class Skus
{
  public String price;
  public String promo_price;
  public String properties;
  public long quantity;
  public long sku_id;

  public Skus(long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    this.sku_id = paramLong1;
    this.quantity = paramLong2;
    this.price = paramString1;
    this.properties = paramString2;
    this.promo_price = "0";
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.util.Skus
 * JD-Core Version:    0.6.2
 */