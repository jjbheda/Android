package com.taobao.top.android.api;

import org.json.JSONObject;

public abstract interface TopApiListener
{
  public abstract void onComplete(JSONObject paramJSONObject);

  public abstract void onError(ApiError paramApiError);

  public abstract void onException(Exception paramException);
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.api.TopApiListener
 * JD-Core Version:    0.6.2
 */