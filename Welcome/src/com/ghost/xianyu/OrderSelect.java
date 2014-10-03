package com.ghost.xianyu;

import java.util.ArrayList;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.ghost.xianyu.util.DbHelper;
import com.ghost.xianyu.util.MyPreference;
import com.ghost.xianyu.util.PropValue;
import com.ghost.xianyu.util.Property;
import com.ghost.xianyu.util.Shopping;
import com.ghost.xianyu.util.Skus;
import com.ghost.xianyu.view.LineBreakLayout;
import com.ghost.xianyu.view.NetImageView;

public class OrderSelect extends Activity
  implements View.OnClickListener
{
  static final String TAG = "OrderSelect";
  private Button addCartBtn;
  private ImageView backImgV;
  private int count = 0;
  private TextView freightTv;
  private EditText goodsLinkEt;
  private EditText goodsNumEt;
  private EditText goodsPatternEt;
  private EditText goodsPriceEt;
  private EditText goodsTitleEt;
  private TextView inventoryTv;
  private Boolean isDestroy = Boolean.valueOf(false);
  private ArrayList<Skus> mSkusList = null;
  private EditText messageEt;
  private NetImageView otherImgV;
  private LinearLayout otherTitleLayout;
  private ScrollView otherView;
  private Button payBtn;
  private NetImageView picImgV;
  private String price;
  private TextView priceTv;
  private String promo_price;
  private LinearLayout propLayout;
  private String props_str = "";
  private ArrayList<Property> proptyList = null;
  private EditText quantityEt;
  private LinearLayout selectBottomLayout;
  private long sku_id = -1L;
  private long sku_quantity;
  private ScrollView taobaoView;
  private TextView titleTv;

  private void getPropStr()
  {
    String str1 = "";
    int i = this.proptyList.size();
    int j = this.mSkusList.size();
    int k = 0;
    label56: TextView localTextView;
    StringBuilder localStringBuilder;
    if (k >= i)
    {
      if (j != 0)
        break label350;
      if (!Home.promo_price.equals("0"))
        break label334;
      this.price = Home.price;
      this.promo_price = "0";
      localTextView = this.priceTv;
      localStringBuilder = new StringBuilder("￥");
      if (!this.promo_price.equals("0"))
        break label588;
    }
    label532: label538: label588: for (String str2 = this.price; ; str2 = this.promo_price)
    {
      localTextView.setText(str2);
      return;
      Property localProperty = (Property)this.proptyList.get(k);
      if (k == i - 1)
        this.props_str = (this.props_str + localProperty.prop_name + ":" + ((PropValue)localProperty.prop_list.get(localProperty.selectId)).name);
      for (str1 = str1 + ((PropValue)localProperty.prop_list.get(localProperty.selectId)).code; ; str1 = str1 + ((PropValue)localProperty.prop_list.get(localProperty.selectId)).code + ";")
      {
        k++;
        break;
        this.props_str = (this.props_str + localProperty.prop_name + ":" + ((PropValue)localProperty.prop_list.get(localProperty.selectId)).name + "&nbsp;&nbsp;");
      }
      label334: this.price = "0";
      this.promo_price = Home.promo_price;
      break label56;
      label350: for (int m = 0; ; m++)
      {
        if (m >= j);
        while (true)
        {
          if (m != j)
            break label538;
          this.inventoryTv.setText("(库存: 0)");
          this.addCartBtn.setEnabled(false);
          this.payBtn.setEnabled(false);
          break;
          if (!((Skus)this.mSkusList.get(m)).properties.equals(str1))
            break label532;
          this.sku_id = ((Skus)this.mSkusList.get(m)).sku_id;
          this.sku_quantity = ((Skus)this.mSkusList.get(m)).quantity;
          if (((Skus)this.mSkusList.get(m)).promo_price.equals("0"))
          {
            this.price = ((Skus)this.mSkusList.get(m)).price;
            this.promo_price = "0";
          }
          else
          {
            this.price = "0";
            this.promo_price = ((Skus)this.mSkusList.get(m)).promo_price;
          }
        }
      }
      this.inventoryTv.setText("(库存: " + this.sku_quantity + ")");
      this.addCartBtn.setEnabled(true);
      this.payBtn.setEnabled(true);
      break label56;
    }
  }

  private Shopping getShopping()
  {
    String str13;
    String str14;
    String str15;
    String str16;
    String str17;
    String str18;
    String str19;
    if (Home.num_iid.equals(""))
    {
      str13 = this.goodsPatternEt.getText().toString();
      str14 = this.goodsNumEt.getText().toString();
      str15 = this.goodsPriceEt.getText().toString();
      str16 = this.messageEt.getText().toString();
      if ((str15.equals("0")) || (str15.equals("")))
      {
        Toast.makeText(this, "请输入商品价格", 0).show();
        return null;
      }
      if ((str14.equals("")) || (str14.equals("0")))
      {
        Toast.makeText(this, "请输入购买数量", 0).show();
        return null;
      }
      str17 = Home.otherUrl;
      str18 = Home.otherStore;
      str19 = Home.otherTitle;
    }
    String str1;
    String str2;
    String str3;
    String str4;
    String str5;
    String str6;
    String str7;
    String str8;
    String str9;
    String str10;
    String str11;
    String str12;
    for (Shopping localShopping = new Shopping(-1, "", str17, str18, str19, "", str15, "0", "", "", str14, str13, "", str16); ; localShopping = new Shopping(-1, str3, str4, str5, str6, str7, str8, str9, str10, str2, str1, str11, str12, ""))
    {
      return localShopping;
      int i = this.proptyList.size();
      if ((this.count > 0) && (i > 0));
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          str1 = this.quantityEt.getText().toString();
          if (!str1.equals(""))
            break;
          showToast("请选择购买数量");
          return null;
        }
        if (((Property)this.proptyList.get(j)).selectId == -1)
        {
          StringBuilder localStringBuilder = new StringBuilder("请选择");
          showToast(((Property)this.proptyList.get(j)).prop_name);
          return null;
        }
      }
      if (Integer.parseInt(str1) > this.sku_quantity)
      {
        showToast("购买数量已经超过库存，请重新选择");
        return null;
      }
      str2 = "";
      if (this.sku_id != -1L)
        str2 = this.sku_id;
      str3 = Home.num_iid;
      str4 = Home.detail_url;
      str5 = Home.store;
      str6 = Home.title;
      str7 = Home.pic_url;
      str8 = this.price;
      str9 = this.promo_price;
      str10 = Home.nick;
      str11 = this.props_str;
      str12 = Home.promo_type;
    }
  }

  private void onOrderConfirm()
  {
    Shopping localShopping = getShopping();
    if (localShopping != null)
    {
      OrderConfirm.orderList.clear();
      OrderConfirm.orderList.add(localShopping);
      OrderConfirm.isFromCart = false;
      startActivity(new Intent(this, OrderConfirm.class));
      finish();
    }
  }

  private void showOtherView()
  {
    this.otherView.setVisibility(0);
    this.otherTitleLayout.setVisibility(0);
    this.taobaoView.setVisibility(8);
    this.otherImgV.setImageUrl("http://www.xianyunet.com/misc/user/img/logo/" + Home.otherStore + ".png");
    this.goodsLinkEt.setText(Home.otherUrl);
    this.goodsTitleEt.setText(Home.otherTitle);
  }

  private void showTaobaoView()
  {
    this.otherView.setVisibility(8);
    this.otherTitleLayout.setVisibility(8);
    this.taobaoView.setVisibility(0);
    this.picImgV.setImageUrl(Home.pic_url);
    this.titleTv.setText(Home.title);
    this.inventoryTv.setText("(库存: " + Home.num + ")");
    this.price = Home.price;
    this.promo_price = Home.promo_price;
    this.sku_quantity = Long.parseLong(Home.num);
    String str1;
    int i;
    double d1;
    double d2;
    int i10;
    String str3;
    String str4;
    label357: int n;
    int i1;
    if (Home.freight_payer.contains("seller"))
    {
      str1 = "卖家包邮";
      this.freightTv.setText(str1);
      this.proptyList = new ArrayList();
      i = 0;
      int j = Home.propertyList.size();
      if (i < j)
        break label560;
      this.mSkusList = Home.skusList;
      if (this.mSkusList.size() <= 1)
        break label879;
      if (!Home.promo_price.equals("0"))
        break label748;
      d1 = Double.parseDouble(((Skus)this.mSkusList.get(0)).price);
      d2 = d1;
      i10 = 1;
      int i11 = this.mSkusList.size();
      if (i10 < i11)
        break label695;
      str3 = "￥" + d1;
      str4 = "￥" + d2;
      if (str3.indexOf(".") == -2 + str3.length())
        str3 = str3 + "0";
      if (str4.indexOf(".") == -2 + str3.length())
        str4 = str4 + "0";
      if (d1 != d2)
        break label843;
      this.priceTv.setText(str3);
      n = 0;
      i1 = this.mSkusList.size();
    }
    int i3;
    LinearLayout.LayoutParams localLayoutParams;
    int i4;
    while (true)
    {
      if (n >= i1)
      {
        int i2 = this.proptyList.size();
        if (i2 <= 0)
          break label1291;
        this.count = i2;
        i3 = getWindowManager().getDefaultDisplay().getWidth();
        localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        i4 = 0;
        if (i4 < i2)
          break label944;
        this.propLayout.setVisibility(0);
        return;
        if ((Home.post_fee.equals("0.00")) && (Home.express_fee.equals("0.00")) && (Home.ems_fee.equals("0.00")))
        {
          str1 = "免运费";
          break;
        }
        str1 = "" + "快递: ￥" + Home.express_fee + " ";
        if (Home.ems_fee.equals("0.00"))
          break;
        str1 = str1 + "EMS: ￥" + Home.ems_fee;
        break;
        label560: Property localProperty1 = new Property(((Property)Home.propertyList.get(i)).prop_id, ((Property)Home.propertyList.get(i)).prop_name);
        ArrayList localArrayList = ((Property)Home.propertyList.get(i)).prop_list;
        int k = 0;
        int m = localArrayList.size();
        while (true)
        {
          if (k >= m)
          {
            this.proptyList.add(localProperty1);
            i++;
            break;
          }
          PropValue localPropValue = new PropValue(((PropValue)localArrayList.get(k)).name, ((PropValue)localArrayList.get(k)).code);
          localProperty1.prop_list.add(localPropValue);
          k++;
        }
        label695: double d4 = Double.parseDouble(((Skus)this.mSkusList.get(i10)).price);
        if (d4 < d1)
          d1 = d4;
        while (true)
        {
          i10++;
          break;
          if (d4 > d2)
            d2 = d4;
        }
        label748: d1 = Double.parseDouble(((Skus)this.mSkusList.get(0)).promo_price);
        d2 = d1;
        int i8 = 1;
        int i9 = this.mSkusList.size();
        label783: double d3;
        if (i8 < i9)
        {
          d3 = Double.parseDouble(((Skus)this.mSkusList.get(i8)).promo_price);
          if (d3 >= d1)
            break label828;
          d1 = d3;
        }
        while (true)
        {
          i8++;
          break label783;
          break;
          label828: if (d3 > d2)
            d2 = d3;
        }
        label843: this.priceTv.setText(str3 + " - " + str4);
        break label357;
        label879: TextView localTextView = this.priceTv;
        StringBuilder localStringBuilder = new StringBuilder("￥");
        if (Home.promo_price.equals("0"));
        for (String str2 = Home.price; ; str2 = Home.promo_price)
        {
          localTextView.setText(str2);
          break;
        }
      }
      n++;
    }
    label944: LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(localLayoutParams);
    LineBreakLayout localLineBreakLayout = new LineBreakLayout(this);
    Button localButton1 = new Button(this);
    localButton1.setText(((Property)this.proptyList.get(i4)).prop_name);
    localButton1.setTextSize(18.0F);
    localButton1.setTextColor(getResources().getColor(2130968588));
    localButton1.setBackgroundColor(getResources().getColor(2130968578));
    localLineBreakLayout.addView(localButton1);
    final int i5 = i4;
    Property localProperty2 = (Property)this.proptyList.get(i4);
    final int i6 = localProperty2.prop_list.size();
    final Button[] arrayOfButton = new Button[i6];
    for (int i7 = 0; ; i7++)
    {
      if (i7 >= i6)
      {
        localLinearLayout.addView(localLineBreakLayout);
        this.propLayout.addView(localLinearLayout);
        i4++;
        break;
      }
      Button localButton2 = new Button(this);
      arrayOfButton[i7] = localButton2;
      arrayOfButton[i7].setText(((PropValue)localProperty2.prop_list.get(i7)).name);
      arrayOfButton[i7].setTextColor(-16777216);
      arrayOfButton[i7].setTag(Integer.valueOf(i7));
      arrayOfButton[i7].setTextSize(16.0F);
      arrayOfButton[i7].setMaxWidth(i3 - 20);
      arrayOfButton[i7].setSingleLine();
      arrayOfButton[i7].setEllipsize(TextUtils.TruncateAt.END);
      arrayOfButton[i7].setBackgroundColor(getResources().getColor(2130968576));
      Button localButton3 = arrayOfButton[i7];
      View.OnClickListener local1 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          int i = ((Integer)paramAnonymousView.getTag()).intValue();
          int j = ((Property)OrderSelect.this.proptyList.get(i5)).selectId;
          if (j == i)
          {
            OrderSelect localOrderSelect2 = OrderSelect.this;
            localOrderSelect2.count = (1 + localOrderSelect2.count);
            ((Property)OrderSelect.this.proptyList.get(i5)).selectId = -1;
            arrayOfButton[i].setBackgroundColor(OrderSelect.this.getResources().getColor(2130968576));
            return;
          }
          if (j == -1)
          {
            OrderSelect localOrderSelect1 = OrderSelect.this;
            localOrderSelect1.count = (-1 + localOrderSelect1.count);
          }
          ((Property)OrderSelect.this.proptyList.get(i5)).selectId = i;
          paramAnonymousView.setBackgroundColor(-65536);
          for (int k = 0; ; k++)
          {
            if (k >= i6)
            {
              if (OrderSelect.this.count != 0)
                break;
              OrderSelect.this.getPropStr();
              return;
            }
            if (k != i)
              arrayOfButton[k].setBackgroundColor(OrderSelect.this.getResources().getColor(2130968576));
          }
        }
      };
      localButton3.setOnClickListener(local1);
      localLineBreakLayout.addView(arrayOfButton[i7]);
    }
    label1291: this.propLayout.setVisibility(8);
  }

  private void showToast(String paramString)
  {
    Toast.makeText(this, paramString, 0).show();
  }

  public void addToCart()
  {
    Shopping localShopping = getShopping();
    if (localShopping != null)
    {
      DbHelper localDbHelper = new DbHelper(this);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("num_iid", localShopping.num_iid);
      localContentValues.put("detail_url", localShopping.detail_url);
      localContentValues.put("store", localShopping.store);
      localContentValues.put("title", localShopping.title);
      localContentValues.put("pic_url", localShopping.pic_url);
      localContentValues.put("price", localShopping.price);
      localContentValues.put("promo_price", localShopping.promo_price);
      localContentValues.put("nick", localShopping.nick);
      localContentValues.put("sku_id", localShopping.sku_id);
      localContentValues.put("quantity", localShopping.quantity);
      localContentValues.put("props_str", localShopping.props_str);
      localContentValues.put("promo_type", localShopping.promo_type);
      localContentValues.put("message", localShopping.message);
      if (localDbHelper.insertShopping(localContentValues))
      {
        showToast("恭喜，添加到购物车成功！");
        Home.cartNum = 1 + Home.cartNum;
        MyPreference.setCartNum(this, Home.cartNum);
        finish();
      }
    }
    else
    {
      return;
    }
    showToast("添加到购物车失败，请重新添加！");
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131296349:
      onOrderConfirm();
      return;
    case 2131296350:
      addToCart();
      return;
    case 2131296330:
      finish();
      return;
    case 2131296328:
    }
    if (Home.num_iid.equals(""))
    {
      this.otherView.setVisibility(0);
      this.otherTitleLayout.setVisibility(0);
      this.taobaoView.setVisibility(8);
    }
    while (true)
    {
      this.selectBottomLayout.setVisibility(0);
      Home.stepId = 3;
      MyPreference.setStep(this, Home.stepId);
      return;
      this.otherView.setVisibility(8);
      this.otherTitleLayout.setVisibility(8);
      this.taobaoView.setVisibility(0);
    }
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
    setContentView(2130903047);
    this.propLayout = ((LinearLayout)findViewById(2131296346));
    this.otherTitleLayout = ((LinearLayout)findViewById(2131296329));
    this.selectBottomLayout = ((LinearLayout)findViewById(2131296332));
    this.otherView = ((ScrollView)findViewById(2131296331));
    this.taobaoView = ((ScrollView)findViewById(2131296340));
    this.payBtn = ((Button)findViewById(2131296349));
    this.addCartBtn = ((Button)findViewById(2131296350));
    this.titleTv = ((TextView)findViewById(2131296342));
    this.inventoryTv = ((TextView)findViewById(2131296345));
    this.priceTv = ((TextView)findViewById(2131296344));
    this.freightTv = ((TextView)findViewById(2131296343));
    this.picImgV = ((NetImageView)findViewById(2131296341));
    this.otherImgV = ((NetImageView)findViewById(2131296333));
    this.backImgV = ((ImageView)findViewById(2131296330));
    this.quantityEt = ((EditText)findViewById(2131296348));
    this.goodsLinkEt = ((EditText)findViewById(2131296334));
    this.goodsTitleEt = ((EditText)findViewById(2131296335));
    this.goodsPatternEt = ((EditText)findViewById(2131296336));
    this.goodsPriceEt = ((EditText)findViewById(2131296337));
    this.goodsNumEt = ((EditText)findViewById(2131296338));
    this.messageEt = ((EditText)findViewById(2131296339));
    if (Home.num_iid.equals(""))
      showOtherView();
    while (true)
    {
      this.payBtn.setOnClickListener(this);
      this.addCartBtn.setOnClickListener(this);
      this.backImgV.setOnClickListener(this);
      return;
      showTaobaoView();
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("isDestroy", this.isDestroy.booleanValue());
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.OrderSelect
 * JD-Core Version:    0.6.2
 */