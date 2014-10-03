package com.ghost.xianyu;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ghost.xianyu.internet.HttpConnection;
import com.ghost.xianyu.internet.NetworkConnection;
import com.ghost.xianyu.util.DbHelper;
import com.ghost.xianyu.util.MyPreference;
import com.ghost.xianyu.util.Shopping;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class OrderConfirm extends Activity
{
  public static boolean isFromCart = false;
  public static ArrayList<Shopping> orderList = new ArrayList();
  static final String tag = "OrderConfirm";
  private ImageView backImgV;
  private LinearLayout bottomLayout;
  private Button confirmBtn;
  private ImageView confirmStepImgV;
  private boolean isDestroy = false;
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
        Toast.makeText(OrderConfirm.this, "网络连接不可用", 0).show();
        return;
      case 0:
        OrderConfirm.this.mDialog.dismiss();
        Toast.makeText(OrderConfirm.this, "部分订单提交失败，请重新提交", 0).show();
        OrderConfirm.this.initLayout();
        return;
      case 1:
      }
      OrderConfirm.this.mDialog.dismiss();
      Toast.makeText(OrderConfirm.this, "提交订单成功", 0).show();
      OrderConfirm.this.finish();
    }
  };
  private LinearLayout orderLayout;
  private LinearLayout titleLayout;
  private RelativeLayout totalLayout;
  private TextView totalTv;

  private void initLayout()
  {
    this.orderLayout.removeAllViews();
    double d = 0.0D;
    int i = orderList.size();
    int j = 0;
    if (j >= i)
    {
      DecimalFormat localDecimalFormat = new DecimalFormat("0.00");
      this.totalTv.setText("￥" + localDecimalFormat.format(d));
      return;
    }
    Shopping localShopping = (Shopping)orderList.get(j);
    View localView = getLayoutInflater().inflate(2130903056, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131296399);
    TextView localTextView2 = (TextView)localView.findViewById(2131296400);
    TextView localTextView3 = (TextView)localView.findViewById(2131296401);
    TextView localTextView4 = (TextView)localView.findViewById(2131296402);
    final EditText localEditText = (EditText)localView.findViewById(2131296403);
    localTextView1.setText(localShopping.nick);
    localTextView2.setText(localShopping.title);
    String str1 = localShopping.props_str.replace("&nbsp;", " ");
    localTextView3.setText(localShopping.quantity + "件    " + str1);
    if (localShopping.promo_price.equals("0"));
    for (String str2 = localShopping.price; ; str2 = localShopping.promo_price)
    {
      localTextView4.setText("￥" + str2);
      if (!localShopping.message.equals(""))
        localEditText.setText(localShopping.message);
      this.orderLayout.addView(localView);
      d += Double.parseDouble(str2) * Integer.parseInt(localShopping.quantity);
      final int k = j;
      TextWatcher local5 = new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          ((Shopping)OrderConfirm.orderList.get(k)).message = localEditText.getText().toString().trim();
        }

        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
        }

        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
        }
      };
      localEditText.addTextChangedListener(local5);
      j++;
      break;
    }
  }

  private void submitToServer()
  {
    if (!NetworkConnection.isConnected(this))
    {
      this.mHandler.sendEmptyMessage(-1);
      return;
    }
    this.mDialog = new ProgressDialog(this);
    this.mDialog.setMessage("提交订单中...");
    this.mDialog.show();
    new Thread(new Runnable()
    {
      public void run()
      {
        if (!OrderConfirm.isFromCart)
        {
          String str3 = ((Shopping)OrderConfirm.orderList.get(0)).store;
          if ((str3.equalsIgnoreCase("taobao")) || (str3.equalsIgnoreCase("tmall")));
          for (String str4 = HttpConnection.post_orderSubmit((Shopping)OrderConfirm.orderList.get(0)); str4.equals("1"); str4 = HttpConnection.post_otherOrderSubmit((Shopping)OrderConfirm.orderList.get(0)))
          {
            OrderConfirm.this.mHandler.sendEmptyMessage(1);
            return;
          }
          OrderConfirm.this.mHandler.sendEmptyMessage(0);
          return;
        }
        ArrayList localArrayList1 = new ArrayList();
        int i = 0;
        DbHelper localDbHelper;
        ArrayList localArrayList2;
        int j;
        int k;
        if (i >= OrderConfirm.orderList.size())
        {
          MyPreference.setCartNum(OrderConfirm.this, Home.cartNum);
          if (localArrayList1.size() > 0)
          {
            localDbHelper = new DbHelper(OrderConfirm.this);
            localArrayList2 = new ArrayList();
            j = 0;
            k = localArrayList1.size();
          }
        }
        /**补充代码，临时解决编译报错--start*/ 
        localDbHelper = new DbHelper(OrderConfirm.this);
        localArrayList2 = new ArrayList();
        j = 0;
        k = localArrayList1.size();
        /**补充代码，临时解决编译报错--end*/ 
        while (true)
        {
          if (j >= k)
          {
            localDbHelper.deleteShopping(localArrayList2);
            if (OrderConfirm.orderList.size() <= 0)
//              break label356;  modified
            OrderConfirm.this.mHandler.sendEmptyMessage(0);
//            return;  Unreach code，故注释
            String str1 = ((Shopping)OrderConfirm.orderList.get(0)).store;
            if ((str1.equalsIgnoreCase("taobao")) || (str1.equalsIgnoreCase("tmall")));
            for (String str2 = HttpConnection.post_orderSubmit((Shopping)OrderConfirm.orderList.get(0)); ; str2 = HttpConnection.post_otherOrderSubmit((Shopping)OrderConfirm.orderList.get(0)))
            {
              if (str2.equals("1"))
              {
                localArrayList1.add((Shopping)OrderConfirm.orderList.get(i));
                OrderConfirm.orderList.remove(i);
                Home.cartNum = -1 + Home.cartNum;
              }
              i++;
              break;
            }
          }
          localArrayList2.add(Integer.valueOf(((Shopping)localArrayList1.get(j)).id));
          j++;
        }
//        label356: OrderConfirm.this.mHandler.sendEmptyMessage(1); modified
      }
    }).start();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      Process.killProcess(Process.myPid());
      finish();
    }
    requestWindowFeature(1);
    setContentView(2130903045);
    this.confirmBtn = ((Button)findViewById(2131296322));
    this.totalTv = ((TextView)findViewById(2131296319));
    this.orderLayout = ((LinearLayout)findViewById(2131296321));
    this.titleLayout = ((LinearLayout)findViewById(2131296316));
    this.bottomLayout = ((LinearLayout)findViewById(2131296320));
    this.backImgV = ((ImageView)findViewById(2131296317));
    this.confirmStepImgV = ((ImageView)findViewById(2131296315));
    this.totalLayout = ((RelativeLayout)findViewById(2131296318));
    this.confirmBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        OrderConfirm.this.submitToServer();
      }
    });
    this.backImgV.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        OrderConfirm.this.finish();
      }
    });
    this.confirmStepImgV.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        OrderConfirm.this.confirmStepImgV.setVisibility(8);
        OrderConfirm.this.titleLayout.setVisibility(0);
        OrderConfirm.this.bottomLayout.setVisibility(0);
        OrderConfirm.this.totalLayout.setVisibility(0);
        OrderConfirm.this.initLayout();
        Home.stepId = 4;
        MyPreference.setStep(OrderConfirm.this, Home.stepId);
      }
    });
    if (Home.stepId == 3)
    {
      this.confirmStepImgV.setVisibility(0);
      this.totalLayout.setVisibility(8);
      this.titleLayout.setVisibility(8);
      this.bottomLayout.setVisibility(8);
      return;
    }
    this.confirmStepImgV.setVisibility(8);
    this.totalLayout.setVisibility(0);
    this.titleLayout.setVisibility(0);
    this.bottomLayout.setVisibility(0);
    initLayout();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("isDestroy", this.isDestroy);
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.OrderConfirm
 * JD-Core Version:    0.6.2
 */