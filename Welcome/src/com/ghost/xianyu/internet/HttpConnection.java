package com.ghost.xianyu.internet;

import android.util.Log;
import com.ghost.xianyu.util.Shopping;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class HttpConnection
{
  public static final int TYPE_FIND_PASSWORD1 = 4;
  public static final int TYPE_FIND_PASSWORD2 = 5;
  public static final int TYPE_LOGIN = 1;
  public static final int TYPE_REGISTER1 = 2;
  public static final int TYPE_REGISTER2 = 3;
  public static final String URL_APK = "http://www.xianyunet.com/downloads/XianYu.apk";
  static final String URL_CANCEL_ORDER1 = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=taobaoOrderCancel";
  static final String URL_CANCEL_ORDER2 = "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=otherOrderCancel";
  static final String URL_FIND_PASSWORD1 = "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD1";
  static final String URL_FIND_PASSWORD2 = "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD2";
  static final String URL_LOGIN = "http://www.xianyunet.com/index.php?c=androidUser&a=login";
  static final String URL_ORDER_SUBMIT1 = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=orderSubmit";
  static final String URL_ORDER_SUBMIT2 = "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=orderSubmit";
  static final String URL_QUERY1 = "http://www.xianyunet.com/index.php?c=androidAccount&a=myTaobaoOrder";
  static final String URL_QUERY2 = "http://www.xianyunet.com/index.php?c=androidAccount&a=myOtherOrder";
  static final String URL_QUERY_EXPRESS = "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=getExpressInfo";
  static final String URL_REGISTER1 = "http://www.xianyunet.com/index.php?c=androidUser&a=getPhoneValideCode";
  static final String URL_REGISTER2 = "http://www.xianyunet.com/index.php?c=androidUser&a=registerDetail";
  static final String URL_REPEAT_CONNECT = "http://www.xianyunet.com/index.php?c=androidUser&a=phoneTest";
  static final String URL_SUBMIT_LINK1 = "http://www.xianyunet.com/index.php?c=taobaoOrder&a=itemInfo";
  static final String URL_VERSION = "http://www.xianyunet.com/index.php?c=android&a=chkApkVersion";
  public static String php_sessid = null;

  public static String post(List<NameValuePair> paramList, String paramString)
  {
    String str = null;
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpPost localHttpPost = new HttpPost(paramString);
    if (paramList != null);
    while (true)
    {
      int j;
      try
      {
        localHttpPost.setEntity(new UrlEncodedFormEntity(paramList, "UTF-8"));
        if (php_sessid != null)
        {
          Log.i("HttpConnection", "Exist: php_sessid =" + php_sessid);
          localHttpPost.setHeader("Cookie", "PHPSESSID=" + php_sessid);
        }
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        int i = localHttpResponse.getStatusLine().getStatusCode();
        str = null;
        if (i != 200)
          break;
        str = EntityUtils.toString(localHttpResponse.getEntity());
        Log.d("HttpConnection", "response = " + str);
        if (php_sessid != null)
          break;
        List localList = ((AbstractHttpClient)localDefaultHttpClient).getCookieStore().getCookies();
        j = 0;
        if (j >= localList.size())
          return str;
        Log.i("HttpConnection", "name = " + ((Cookie)localList.get(j)).getName());
        if ("PHPSESSID".equals(((Cookie)localList.get(j)).getName()))
        {
          php_sessid = ((Cookie)localList.get(j)).getValue();
          Log.i("HttpConnection", "php_sessid = " + php_sessid);
          return str;
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
        return str;
      }
      j++;
    }
    return str;
  }

  public static String post_cancelOrder(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("id", paramString));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=taobaoOrderCancel");
  }

  public static String post_cancelOtherOrder(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("id", paramString));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=otherOrderCancel");
  }

  public static String post_findPassword1(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("user_id", paramString));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD1");
  }

  public static String post_findPassword2(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("user_id", paramString1));
    localArrayList.add(new BasicNameValuePair("password", paramString2));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidUser&a=findPWD2");
  }

  public static String post_login(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("user_id", paramString1));
    localArrayList.add(new BasicNameValuePair("password", paramString2));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidUser&a=login");
  }

  public static String post_orderSubmit(Shopping paramShopping)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("store_id", paramShopping.store));
    localArrayList.add(new BasicNameValuePair("item_id", paramShopping.num_iid));
    localArrayList.add(new BasicNameValuePair("item_url", paramShopping.detail_url));
    localArrayList.add(new BasicNameValuePair("item_title", paramShopping.title));
    localArrayList.add(new BasicNameValuePair("item_img_url", paramShopping.pic_url));
    localArrayList.add(new BasicNameValuePair("order_price", paramShopping.price));
    localArrayList.add(new BasicNameValuePair("order_promo_price", paramShopping.promo_price));
    localArrayList.add(new BasicNameValuePair("seller_nick", paramShopping.nick));
    localArrayList.add(new BasicNameValuePair("item_sku_id", paramShopping.sku_id));
    localArrayList.add(new BasicNameValuePair("quantity", paramShopping.quantity));
    localArrayList.add(new BasicNameValuePair("item_props_detail", paramShopping.props_str));
    localArrayList.add(new BasicNameValuePair("promo_type", paramShopping.promo_type));
    localArrayList.add(new BasicNameValuePair("message", paramShopping.message));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=orderSubmit");
  }

  public static String post_otherOrderSubmit(Shopping paramShopping)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("store_id", paramShopping.store));
    localArrayList.add(new BasicNameValuePair("item_url", paramShopping.detail_url));
    localArrayList.add(new BasicNameValuePair("item_title", paramShopping.title));
    localArrayList.add(new BasicNameValuePair("order_price", paramShopping.price));
    localArrayList.add(new BasicNameValuePair("quantity", paramShopping.quantity));
    localArrayList.add(new BasicNameValuePair("item_props_detail", paramShopping.props_str));
    localArrayList.add(new BasicNameValuePair("message", paramShopping.message));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidOtherOrder&a=orderSubmit");
  }

  public static String post_query(String paramString)
  {
    return post(null, "http://www.xianyunet.com/index.php?c=androidAccount&a=myTaobaoOrder&page=" + paramString);
  }

  public static String post_queryExpress(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("express_id", paramString1));
    localArrayList.add(new BasicNameValuePair("express_company", paramString2));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidTaobaoOrder&a=getExpressInfo");
  }

  public static String post_queryOther(String paramString)
  {
    return post(null, "http://www.xianyunet.com/index.php?c=androidAccount&a=myOtherOrder&page=" + paramString);
  }

  public static String post_register1(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("user_id", paramString));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidUser&a=getPhoneValideCode");
  }

  public static String post_register2(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("user_id", paramString1));
    localArrayList.add(new BasicNameValuePair("real_name", paramString2));
    localArrayList.add(new BasicNameValuePair("password", paramString3));
    localArrayList.add(new BasicNameValuePair("gender", paramString4));
    localArrayList.add(new BasicNameValuePair("email", paramString5));
    localArrayList.add(new BasicNameValuePair("sid", paramString6));
    localArrayList.add(new BasicNameValuePair("dormitory", paramString7));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=androidUser&a=registerDetail");
  }

  public static String post_submitLink1(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("id", paramString));
    return post(localArrayList, "http://www.xianyunet.com/index.php?c=taobaoOrder&a=itemInfo");
  }

  public static String post_version()
  {
    return post(null, "http://www.xianyunet.com/index.php?c=android&a=chkApkVersion");
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.internet.HttpConnection
 * JD-Core Version:    0.6.2
 */