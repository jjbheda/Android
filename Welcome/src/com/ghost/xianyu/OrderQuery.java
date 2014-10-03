package com.ghost.xianyu;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.ghost.xianyu.internet.HttpConnection;
import com.ghost.xianyu.internet.NetworkConnection;
import com.ghost.xianyu.util.MyPreference;
import com.ghost.xianyu.util.OrderInfo;
import com.ghost.xianyu.view.MyListView;
import com.ghost.xianyu.view.NetImageView;

public class OrderQuery extends Activity
  implements MyListView.MyListViewListener
{
  static final String tag = "OrderQuery";
  private ImageView backImgV;
  private int current_page = 1;
  private boolean hasMore = true;
  private boolean isClick = false;
  private boolean isFirst = true;
  private boolean isFirstOther = true;
  private boolean isRefresh = true;
  private boolean isSelectTaobao = true;
  private QueryAdapter mAdapter;
  private ProgressDialog mDialog;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case -1:
        if (OrderQuery.this.isFirst)
          OrderQuery.this.isFirst = false;
        while (true)
        {
          Toast.makeText(OrderQuery.this, "网络连接不可用", 0).show();
//          return; modified
          if (OrderQuery.this.isRefresh)
            OrderQuery.this.mListView.stopRefresh();
          else
            OrderQuery.this.mListView.stopLoadMore();
          return;  //modified
        }
      case 0:
        if ((OrderQuery.this.isFirst) || (OrderQuery.this.isClick))
        {
          OrderQuery.this.mDialog.dismiss();
          OrderQuery.this.isFirst = false;
          OrderQuery.this.isClick = false;
        }
        OrderQuery.this.orderInfoList.clear();
        if (OrderQuery.this.isSelectTaobao)
          OrderQuery.this.orderInfoList.addAll(OrderQuery.this.taobaoOrderList);
        while (true)
        {
          OrderQuery.this.mListView.setAdapter(OrderQuery.this.mAdapter);
          OrderQuery.this.mListView.stopRefresh();
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EE MM/dd HH:mm");
          OrderQuery.this.mListView.setRefreshTime(localSimpleDateFormat.format(new Date()));
//          return; modified
          OrderQuery.this.orderInfoList.addAll(OrderQuery.this.otherOrderList);  //modified
          return;  //modified
        }
      case 1:
        OrderQuery.this.dataChanged();
        OrderQuery.this.mListView.stopLoadMore();
        return;
      case 2:
        Toast.makeText(OrderQuery.this, "已经到最后一项了", 0).show();
        OrderQuery.this.mListView.stopLoadMore();
        return;
      case 3:
        ((OrderInfo)OrderQuery.this.orderInfoList.get(paramAnonymousMessage.arg1)).status_caption = ((String)paramAnonymousMessage.obj);
        OrderQuery.this.mAdapter.notifyDataSetChanged();
        if (OrderQuery.this.isSelectTaobao)
        {
          ((OrderInfo)OrderQuery.this.taobaoOrderList.get(paramAnonymousMessage.arg1)).status_caption = ((String)paramAnonymousMessage.obj);
          return;
        }
        ((OrderInfo)OrderQuery.this.otherOrderList.get(paramAnonymousMessage.arg1)).status_caption = ((String)paramAnonymousMessage.obj);
        return;
      case 4:
        OrderQuery.this.mDialog.dismiss();
        OrderQuery.this.showExpressInfo((String)paramAnonymousMessage.obj);
        return;
      case 5:
      }
      Toast.makeText(OrderQuery.this, "没有订单信息", 0).show();
    }
  };
  private MyListView mListView;
  ArrayList<OrderInfo> orderInfoList = new ArrayList();
  private RelativeLayout otherLayout;
  ArrayList<OrderInfo> otherOrderList = new ArrayList();
  private ImageView queryStepImgV;
  private RelativeLayout taobaoLayout;
  ArrayList<OrderInfo> taobaoOrderList = new ArrayList();

  private void cancelOrder(final int paramInt)
  {
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        if (OrderQuery.this.isSelectTaobao);
        for (String str = HttpConnection.post_cancelOrder(((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).id); ; str = HttpConnection.post_cancelOtherOrder(((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).id))
        {
          Message localMessage = Message.obtain();
          localMessage.what = 3;
          localMessage.arg1 = paramInt;
          localMessage.obj = str;
          OrderQuery.this.mHandler.sendMessage(localMessage);
          return;
        }
      }
    }).start();
  }

  private void dataChanged()
  {
    this.orderInfoList.clear();
    if (this.isSelectTaobao)
      this.orderInfoList.addAll(this.taobaoOrderList);
    while (true)
    {
      this.mAdapter.notifyDataSetChanged();
//      return;
      this.orderInfoList.addAll(this.otherOrderList);
      return;
    }
  }

  private void getExpressInfo(final int paramInt)
  {
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    showDialog();
    new Thread(new Runnable()
    {
      public void run()
      {
        String str = HttpConnection.post_queryExpress(((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).express_id, ((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).express_company);
        Log.i("OrderQuery", "response = " + str);
        Message localMessage = Message.obtain();
        localMessage.what = 4;
        localMessage.obj = str;
        OrderQuery.this.mHandler.sendMessage(localMessage);
      }
    }).start();
  }

  private void mergerSameTrade()
  {
    if (this.isSelectTaobao)
    {
      String str2 = ((OrderInfo)this.taobaoOrderList.get(0)).trade_id;
      int k = 1;
      int m = this.taobaoOrderList.size();
      if (k >= m)
        return;
      if ((((OrderInfo)this.taobaoOrderList.get(k)).trade_id.equals("null")) || (!((OrderInfo)this.taobaoOrderList.get(k)).trade_id.equals(str2)))
        str2 = ((OrderInfo)this.taobaoOrderList.get(k)).trade_id;
      while (true)
      {
        k++;
//        break;
        if(k>10) break;  //modified
        if (((OrderInfo)this.taobaoOrderList.get(k - 1)).sequence == 0)
          ((OrderInfo)this.taobaoOrderList.get(k - 1)).sequence = 1;
        ((OrderInfo)this.taobaoOrderList.get(k)).sequence = (1 + ((OrderInfo)this.taobaoOrderList.get(k - 1)).sequence);
      }
    }
    String str1 = ((OrderInfo)this.otherOrderList.get(0)).trade_id;
    int i = 1;
    int j = this.otherOrderList.size();
    label212: if (i < j)
    {
      if ((!((OrderInfo)this.otherOrderList.get(i)).trade_id.equals("null")) && (((OrderInfo)this.otherOrderList.get(i)).trade_id.equals(str1)))
//        break label281;
      str1 = ((OrderInfo)this.otherOrderList.get(i)).trade_id;
    }
    while (true)
    {
      i++;
//      break label212;
      if (i>10) break;
      label281: if (((OrderInfo)this.otherOrderList.get(i - 1)).sequence == 0)
        ((OrderInfo)this.otherOrderList.get(i - 1)).sequence = 1;
      ((OrderInfo)this.otherOrderList.get(i)).sequence = (1 + ((OrderInfo)this.otherOrderList.get(i - 1)).sequence);
    }
  }

  private void showDialog()
  {
    this.mDialog = new ProgressDialog(this);
    this.mDialog.setMessage("加载中......");
    this.mDialog.show();
  }

  private void showExpressInfo(String paramString)
  {
    View localView = LayoutInflater.from(this).inflate(2130903051, null);
    WebView localWebView = (WebView)localView.findViewById(2131296380);
    localWebView.getSettings().setDefaultTextEncodingName("UTF-8");
    localWebView.loadData(paramString, "text/html;charset=UTF-8", null);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle("物流信息");
    localBuilder.setView(localView);
    localBuilder.show();
  }

  private void showOptions(final int paramInt)
  {
    CharSequence[] arrayOfCharSequence = { "查看物流", "取消订单" };
    Log.i("OrderQuery", "pos = " + paramInt);
    new AlertDialog.Builder(this).setItems(arrayOfCharSequence, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
          if (((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).express_id.equals("null"))
            Toast.makeText(OrderQuery.this, "没有物流信息", 0).show();
        while (true)
        {
          paramAnonymousDialogInterface.dismiss();
//          return; damn code
          OrderQuery.this.getExpressInfo(paramInt);
//          continue;  damn code
          if (Integer.parseInt(((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).status) < 3)
            OrderQuery.this.cancelOrder(paramInt);
          else
            Toast.makeText(OrderQuery.this, "不能取消订单", 0).show();
        }
      }
    }).show();
  }

  private void showOtherOptions(final int paramInt)
  {
    CharSequence[] arrayOfCharSequence = { "取消订单" };
    Log.i("OrderQuery", "pos = " + paramInt);
    new AlertDialog.Builder(this).setItems(arrayOfCharSequence, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          if (Integer.parseInt(((OrderInfo)OrderQuery.this.orderInfoList.get(paramInt)).status) >= 3)
//            break label49; 
          OrderQuery.this.cancelOrder(paramInt);
        }
        while (true)
        {
          paramAnonymousDialogInterface.dismiss();
          return;
//          label49: Toast.makeText(OrderQuery.this, "不能取消订单", 0).show();
        }
      }
    }).show();
  }

  public void firstLoading()
  {
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    showDialog();
    this.isRefresh = true;
    queryOrder();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903046);
    this.mListView = ((MyListView)findViewById(2131296327));
    this.taobaoLayout = ((RelativeLayout)findViewById(2131296325));
    this.otherLayout = ((RelativeLayout)findViewById(2131296326));
    this.backImgV = ((ImageView)findViewById(2131296324));
    this.queryStepImgV = ((ImageView)findViewById(2131296323));
    this.mAdapter = new QueryAdapter(this);
    this.mListView.setPullLoadEnable(true);
    this.mListView.setMyListViewListener(this);
    this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (OrderQuery.this.isSelectTaobao)
        {
          OrderQuery.this.showOptions(paramAnonymousInt - 1);
          return;
        }
        OrderQuery.this.showOtherOptions(paramAnonymousInt - 1);
      }
    });
    this.taobaoLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!OrderQuery.this.isSelectTaobao)
        {
          OrderQuery.this.isSelectTaobao = true;
          OrderQuery.this.taobaoLayout.setBackgroundColor(OrderQuery.this.getResources().getColor(2130968580));
          OrderQuery.this.otherLayout.setBackgroundColor(OrderQuery.this.getResources().getColor(2130968578));
          OrderQuery.this.dataChanged();
        }
      }
    });
    this.otherLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (OrderQuery.this.isSelectTaobao)
        {
          OrderQuery.this.isSelectTaobao = false;
          OrderQuery.this.otherLayout.setBackgroundColor(OrderQuery.this.getResources().getColor(2130968580));
          OrderQuery.this.taobaoLayout.setBackgroundColor(OrderQuery.this.getResources().getColor(2130968578));
          if (OrderQuery.this.isFirstOther)
          {
            OrderQuery.this.isFirstOther = false;
            OrderQuery.this.isClick = true;
            OrderQuery.this.firstLoading();
          }
        }
        else
        {
          return;
        }
        OrderQuery.this.dataChanged();
      }
    });
    this.backImgV.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        OrderQuery.this.finish();
      }
    });
    this.queryStepImgV.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        OrderQuery.this.queryStepImgV.setVisibility(8);
        OrderQuery.this.firstLoading();
        Home.stepId = 6;
        MyPreference.setStep(OrderQuery.this, Home.stepId);
      }
    });
    if (Home.stepId == 4)
    {
      this.queryStepImgV.setVisibility(0);
      return;
    }
    this.queryStepImgV.setVisibility(8);
    firstLoading();
  }

  public void onLoadMore()
  {
    if (!this.hasMore)
    {
      this.mHandler.sendEmptyMessage(2);
      return;
    }
    this.isRefresh = false;
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    queryOrder();
  }

  public void onRefresh()
  {
    this.isRefresh = true;
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    if (this.isSelectTaobao)
      this.taobaoOrderList.clear();
    while (true)
    {
      this.current_page = 1;
      this.hasMore = true;
      queryOrder();
      return;
//      this.otherOrderList.clear();
    }
  }

  public void queryOrder()
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        String str1;
        if (OrderQuery.this.isSelectTaobao)
//          str1 = HttpConnection.post_query(OrderQuery.this.current_page);
        str1 = HttpConnection.post_query("1");
        JSONObject localJSONObject1;
        try
        {
          String str2;
          while (true)
          {	
        	str1 = ""; //modified
            localJSONObject1 = new JSONObject(str1);
            str2 = localJSONObject1.getString("page");
            if (str2 != null)
              break;
            OrderQuery.this.hasMore = false;
            OrderQuery.this.mHandler.sendEmptyMessage(5);
            return;
//            str1 = HttpConnection.post_queryOther(OrderQuery.this.current_page);
//            str1 = HttpConnection.post_queryOther("1");
          }
          Log.i("OrderQuery", "page=" + str2);
          JSONObject localJSONObject2 = new JSONObject(str2);
          String str3 = localJSONObject2.optString("total_count");
          String str4 = localJSONObject2.optString("total_page");
          Log.i("OrderQuery", "total_count = " + str3 + ", total_page = " + str4 + ", current_page = " + OrderQuery.this.current_page);
          if (OrderQuery.this.current_page < Integer.parseInt(str4))
          {
            OrderQuery.this.hasMore = true;
            OrderQuery localOrderQuery = OrderQuery.this;
            localOrderQuery.current_page = (1 + localOrderQuery.current_page);
//            break label852;
            OrderQuery.this.mergerSameTrade();
            if (OrderQuery.this.isRefresh)
              OrderQuery.this.mHandler.sendEmptyMessage(0);
          }
          else
          {
            OrderQuery.this.hasMore = false;
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
        label852: label864: label868: 
        while (true)
        {
          try
          {
//            String str5 = localJSONObject1.getString(i); modified
            String str5 = localJSONObject1.getString(""); //modified
            Log.i("OrderQuery", "tmp = " + str5);
            JSONObject localJSONObject3 = new JSONObject(str5);
            String str6 = localJSONObject3.optString("id");
            String str7 = localJSONObject3.optString("status");
            String str8 = localJSONObject3.optString("seller_nick");
            String str9 = localJSONObject3.optString("item_title");
            String str10 = localJSONObject3.optString("item_img_url");
            String str11 = localJSONObject3.optString("item_props_detail").replaceAll("&nbsp;", " ");
            String str12 = localJSONObject3.optString("quantity");
            String str13 = localJSONObject3.optString("order_price");
            String str14 = localJSONObject3.optString("order_promo_price");
            String str15 = localJSONObject3.optString("order_total_price");
            String str16 = localJSONObject3.optString("status_caption");
            String str17 = localJSONObject3.optString("message");
            String str18 = localJSONObject3.optString("express_id");
            String str19 = localJSONObject3.optString("express_company");
            String str20;
            OrderInfo localOrderInfo;
            if (OrderQuery.this.isSelectTaobao)
            {
              str20 = localJSONObject3.optString("trade_id");
              Log.i("OrderQuery", "id = " + str8 + ", status = " + str7);
              Log.i("OrderQuery", "trade_id = " + str20);
              Log.i("OrderQuery", "nick = " + str8 + ", title = " + str9);
              Log.i("OrderQuery", "pic_url = " + str10 + ", props_str=" + str11);
              Log.i("OrderQuery", "price = " + str13 + ", promo_price=" + str14 + "total_price = " + str15);
              Log.i("OrderQuery", "quantity = " + str12 + ", status_caption=" + str16);
              Log.i("OrderQuery", "express id = " + str18 + ", company =" + str19);
              localOrderInfo = new OrderInfo(str6, str20, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, 0);
              if (OrderQuery.this.isSelectTaobao)
              {
                OrderQuery.this.taobaoOrderList.add(localOrderInfo);
                break label864;
              }
            }
            else
            {
              str20 = localJSONObject3.optString("order_combine_number");
              continue;
            }
            OrderQuery.this.otherOrderList.add(localOrderInfo);
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
          }
          break;
//          OrderQuery.this.mHandler.sendEmptyMessage(1);
//          return;
//          for (int i = 0; ; i++)
//          {
//            if (i > -1)
//              break label868;
//            break;
//          }
        }
      }
    }).start();
  }

  class QueryAdapter extends BaseAdapter
  {
    LayoutInflater inflater;

    public QueryAdapter(Context arg2)
    {
//    	Context localContext;
      Context localContext = arg2;
      this.inflater = LayoutInflater.from(localContext);
    }

    public int getCount()
    {
      return OrderQuery.this.orderInfoList.size();
    }

    public Object getItem(int paramInt)
    {
      return OrderQuery.this.orderInfoList.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      OrderQuery.ViewHolder localViewHolder;
      OrderInfo localOrderInfo;
      String str1;
//      label212: String str2;
//      label293: TextView localTextView3;
      String str2;
      TextView localTextView3;
      if (paramView == null)
      {
        paramView = this.inflater.inflate(2130903054, null);
        localViewHolder = new OrderQuery.ViewHolder();
        localViewHolder.titleTv = ((TextView)paramView.findViewById(2131296390));
        localViewHolder.quantityTv = ((TextView)paramView.findViewById(2131296392));
        localViewHolder.priceTv = ((TextView)paramView.findViewById(2131296393));
        localViewHolder.paidTv = ((TextView)paramView.findViewById(2131296394));
        localViewHolder.statusTv = ((TextView)paramView.findViewById(2131296396));
        localViewHolder.messageTv = ((TextView)paramView.findViewById(2131296395));
        localViewHolder.sequenceTv = ((TextView)paramView.findViewById(2131296397));
        localViewHolder.pic_urlImgV = ((NetImageView)paramView.findViewById(2131296391));
        paramView.setTag(localViewHolder);
        localOrderInfo = (OrderInfo)OrderQuery.this.orderInfoList.get(paramInt);
        TextView localTextView1 = localViewHolder.titleTv;
        StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(localOrderInfo.nick)).append(" - ").append(localOrderInfo.title);
        if (!localOrderInfo.props_str.equals(""))
//          break label482;
        str1 = "";
//        localTextView1.setText(str1);
        localViewHolder.quantityTv.setText("数量: " + localOrderInfo.quantity);
        TextView localTextView2 = localViewHolder.priceTv;
        StringBuilder localStringBuilder2 = new StringBuilder("￥");
        if (!localOrderInfo.promo_price.equals("0"))
//          break label512;
        str2 = localOrderInfo.price;
//        localTextView2.setText(str2);
        localViewHolder.statusTv.setText(localOrderInfo.status_caption);
        localViewHolder.messageTv.setText(localOrderInfo.message);
        localTextView3 = localViewHolder.sequenceTv;
        if (localOrderInfo.sequence <= 0);
//          break label522;
      }
//      label512: label522: for (String str3 = "(" + localOrderInfo.sequence + ")"; ; str3 = "")
//      {
//        localTextView3.setText(str3);
//        localViewHolder.pic_urlImgV.setTag(localOrderInfo.pic_url);
//        localViewHolder.pic_urlImgV.setImageUrl1(localOrderInfo.pic_url);
//        if ((localOrderInfo.total_price.equals("0")) || (localOrderInfo.sequence >= 2))
//          break label529;
//        localViewHolder.paidTv.setVisibility(0);
//        localViewHolder.paidTv.setText("实付款: ￥" + localOrderInfo.total_price);
//        return paramView;
//        localViewHolder = (OrderQuery.ViewHolder)paramView.getTag();
//        break;
//        label482: str1 = "(" + localOrderInfo.props_str + ")";
//        break label212;
//        str2 = localOrderInfo.promo_price;
//        break label293;
//      }
//      label529: localViewHolder.paidTv.setVisibility(8);
      return paramView;
    }
  }

  static class ViewHolder
  {
    TextView messageTv;
    TextView paidTv;
    NetImageView pic_urlImgV;
    TextView priceTv;
    TextView quantityTv;
    TextView sequenceTv;
    TextView statusTv;
    TextView titleTv;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.OrderQuery
 * JD-Core Version:    0.6.2
 */