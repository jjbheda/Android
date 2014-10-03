package com.ghost.xianyu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.ghost.xianyu.util.DbHelper;
import com.ghost.xianyu.util.MyPreference;
import com.ghost.xianyu.util.Shopping;
import com.ghost.xianyu.view.NetImageView;

@SuppressLint({"UseSparseArrays"})
public class Cart extends Activity
  implements View.OnClickListener
{
  private ImageView backImgV;
  private TextView cartCountTv;
  private Button deleteOrderBtn;
  private DbHelper helper;
  private boolean isDestroy = false;
  private List<Shopping> list;
  private ListView listView;
  private MyAdapter myAdapter;
  private RelativeLayout noCartLayout;
  private ArrayList<Shopping> selectedList;
  private Button submitOrderBtn;

  private void deleteOrder()
  {
    if (this.selectedList.size() == 0)
    {
      Toast.makeText(this, "请选择订单", 0).show();
      return;
    }
    Home.cartNum -= this.selectedList.size();
    ArrayList localArrayList;
    Iterator localIterator;
    if (Home.cartNum == 0)
    {
      this.cartCountTv.setText("");
      this.noCartLayout.setVisibility(0);
      this.listView.setVisibility(8);
      this.deleteOrderBtn.setEnabled(false);
      this.submitOrderBtn.setEnabled(false);
      MyPreference.setCartNum(this, Home.cartNum);
      localArrayList = new ArrayList();
      localIterator = this.selectedList.iterator();
    }
    /**补充代码，临时解决编译报错--start*/ 
    localArrayList = new ArrayList();
    localIterator = this.selectedList.iterator();
    /**补充代码，临时解决编译报错--end*/ 
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.helper.deleteShopping(localArrayList);
        this.selectedList.clear();
        this.myAdapter.notifyDataSetChanged();
        Toast.makeText(this, "已删除", 0).show();
        return;
        /**damn code*/
//        this.cartCountTv.setText(Home.cartNum);
//        break;
        /**damn code*/
      }
      Shopping localShopping = (Shopping)localIterator.next();
      localArrayList.add(Integer.valueOf(localShopping.id));
      this.list.remove(localShopping);
    }
  }

  private void submitOrder()
  {
    if (this.selectedList.size() == 0)
    {
      Toast.makeText(this, "请选择订单", 0).show();
      return;
    }
    OrderConfirm.orderList.clear();
    OrderConfirm.orderList = this.selectedList;
    OrderConfirm.isFromCart = true;
    startActivity(new Intent(this, OrderConfirm.class));
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131296263:
      deleteOrder();
      return;
    case 2131296264:
      submitOrder();
      return;
    case 2131296257:
    }
    finish();
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
    setContentView(2130903040);
    this.listView = ((ListView)findViewById(2131296261));
    this.cartCountTv = ((TextView)findViewById(2131296259));
    this.deleteOrderBtn = ((Button)findViewById(2131296263));
    this.submitOrderBtn = ((Button)findViewById(2131296264));
    this.noCartLayout = ((RelativeLayout)findViewById(2131296260));
    this.backImgV = ((ImageView)findViewById(2131296257));
    this.deleteOrderBtn.setOnClickListener(this);
    this.submitOrderBtn.setOnClickListener(this);
    this.backImgV.setOnClickListener(this);
  }

  protected void onResume()
  {
    super.onResume();
    if (Home.cartNum > 0)
    {
      this.noCartLayout.setVisibility(8);
      this.listView.setVisibility(0);
      this.deleteOrderBtn.setEnabled(true);
      this.submitOrderBtn.setEnabled(true);
      this.cartCountTv.setText(Home.cartNum);
      this.list = new ArrayList();
      this.selectedList = new ArrayList();
      this.myAdapter = new MyAdapter(this);
      this.helper = new DbHelper(this);
      this.list = this.helper.listShopping();
      this.listView.setAdapter(this.myAdapter);
      return;
    }
    this.noCartLayout.setVisibility(0);
    this.listView.setVisibility(8);
    this.deleteOrderBtn.setEnabled(false);
    this.submitOrderBtn.setEnabled(false);
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("isDestroy", this.isDestroy);
  }

  public class MyAdapter extends BaseAdapter
  {
    LayoutInflater inflater = null;

    public MyAdapter(Context arg2)
    {
//      Context localContext;  modifed
      Context localContext = arg2;
      this.inflater = LayoutInflater.from(localContext);
    }

    public int getCount()
    {
      return Cart.this.list.size();
    }

    public Object getItem(int paramInt)
    {
      return Cart.this.list.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Cart.ViewHolder localViewHolder;
      final Shopping localShopping;
      /**补充代码，临时解决编译报错--start*/
      localShopping = (Shopping)Cart.this.list.get(paramInt);
      localViewHolder = new Cart.ViewHolder();
      /**补充代码，临时解决编译报错--end*/
      String str;
      if (paramView == null)
      {
        paramView = this.inflater.inflate(2130903050, null);
        localViewHolder = new Cart.ViewHolder();
        localViewHolder.nickTv = ((TextView)paramView.findViewById(2131296372));
        localViewHolder.titleTv = ((TextView)paramView.findViewById(2131296376));
        localViewHolder.propsTv = ((TextView)paramView.findViewById(2131296377));
        localViewHolder.numTv = ((TextView)paramView.findViewById(2131296378));
        localViewHolder.priceTv = ((TextView)paramView.findViewById(2131296379));
        localViewHolder.pic_urlImgV = ((NetImageView)paramView.findViewById(2131296373));
        localViewHolder.selectedCb = ((CheckBox)paramView.findViewById(2131296375));
        paramView.setTag(localViewHolder);
//        localShopping = (Shopping)Cart.this.list.get(paramInt);  modifed
        localViewHolder.titleTv.setText(localShopping.title);
        localViewHolder.propsTv.setText(localShopping.props_alias.replaceAll("&nbsp;", " "));
        localViewHolder.numTv.setText("数量:" + localShopping.quantity);
        TextView localTextView = localViewHolder.priceTv;
        StringBuilder localStringBuilder = new StringBuilder("￥");
        if (!localShopping.promo_price.equals("0"))
//          break label351;
        str = localShopping.price;
//        label245: localTextView.setText(str);
        localViewHolder.selectedCb.setChecked(localShopping.isCheck);
        localViewHolder.selectedCb.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (localShopping.isCheck)
            {
              localShopping.isCheck = false;
              Cart.this.selectedList.remove(localShopping);
              return;
            }
            localShopping.isCheck = true;
            Cart.this.selectedList.add(localShopping);
          }
        });
        if (!localShopping.nick.equals(""))
//          break label361;
        localViewHolder.nickTv.setVisibility(8);
      }
//      while (true)
//      {
//        if (!localShopping.pic_url.equals(""))
//          break label386;
//        localViewHolder.pic_urlImgV.setImageResource(2130837538);
//        return paramView;
//        localViewHolder = (Cart.ViewHolder)paramView.getTag();
//        break;
//        label351: str = localShopping.promo_price;
//        break label245;
//        label361: localViewHolder.nickTv.setVisibility(0);
//        localViewHolder.nickTv.setText(localShopping.nick);
//      }
      label386: localViewHolder.pic_urlImgV.setTag(localShopping.pic_url);
      localViewHolder.pic_urlImgV.setImageUrl1(localShopping.pic_url);
      return paramView;
    }
  }

  static class ViewHolder
  {
    TextView nickTv;
    TextView numTv;
    NetImageView pic_urlImgV;
    TextView priceTv;
    TextView propsTv;
    CheckBox selectedCb;
    TextView titleTv;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.Cart
 * JD-Core Version:    0.6.2
 */