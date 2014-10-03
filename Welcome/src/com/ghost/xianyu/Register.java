package com.ghost.xianyu;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
//import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.ghost.xianyu.internet.HttpConnection;
import com.ghost.xianyu.internet.NetworkConnection;
import com.ghost.xianyu.util.College;
import com.ghost.xianyu.util.ValidityCheck;
import java.util.ArrayList;
import java.util.List;

public class Register extends Activity
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  static final int BASIC_INFO = 0;
  static final String[] COLLEGE_NAME_ARR = { "河南工业大学", "郑州大学", "郑州轻工业学院" };
  static final int FAILURE = 0;
  static final int NO_NETWORK = -2;
  static final int REAL_USER_INFO = 1;
  static final int REGISTERED = -1;
  static final int SEND_SUCCESS = 2;
  static final int SUCCESS = 1;
  CheckBox agreeCb;
  Handler authHd = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      Register.this.authPd.dismiss();
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 2:
        Register.this.showToast("已发送短信激活码");
        return;
      case 1:
        Register.this.showToast("注册成功");
        Register.this.finish();
        return;
      case -1:
        Register.this.showToast("该手机号已经被注册,请重新输入手机号");
        return;
      case 0:
        Register.this.showToast("注册失败，网络发生错误");
        return;
      case -2:
      }
      Register.this.showToast("网络连接不可用");
    }
  };
  ProgressDialog authPd;
  ImageView backImgV;
  LinearLayout basicLayout;
  String code = "";
  EditText codeEt;
  Button collegeBtn;
  int collegeId = -1;
  List<College> collegeList;
  Button confirmRegBtn;
  int currentMode;
  String dorm = "";
  EditText dormEt;
  String email = "";
  EditText emailEt;
  String gender = "";
  RadioGroup genderRdGroup;
  TextView generalTv;
  Button getCodeBtn;
  boolean isAgree;
  boolean isStartValidate = false;
  ListView listView;
  RadioButton manRdBtn;
  MyAdapter myAdapter;
  Button okBtn;
  String password = "";
  EditText phoneEt;
  String phoneNum = "";
  PopupWindow popWd;
  EditText psdEt;
  String rePassword = "";
  EditText rePasswordEt;
  String returnCode = "";
  ImageView spinnerImgV;
  int timeCount;
  Handler timeHd = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        Register.this.getCodeBtn.setText(Register.this.timeCount + "秒后可以重新获取");
        return;
      case 1:
      }
      Register.this.getCodeBtn.setText("免费获取短信激活码");
      Register.this.getCodeBtn.setEnabled(false);
    }
  };
  TextView titleTv;
  LinearLayout userLayout;
  String userName = "";
  EditText userNameEt;
  RadioButton womanRdBtn;

  private void authen()
  {
    this.authPd.setMessage("正在注册中...");
    this.authPd.show();
    new Thread()
    {
      public void run()
      {
//        Register.this.returnCode = HttpConnection.post_register2(Register.this.phoneNum, Register.this.userName, Register.this.password, Register.this.gender, Register.this.email, Register.this.collegeId, Register.this.dorm);
        Register.this.returnCode = HttpConnection.post_register2(Register.this.phoneNum, Register.this.userName, Register.this.password, Register.this.gender, Register.this.email, "-1", Register.this.dorm);
        if ((Register.this.returnCode != null) && (Register.this.returnCode.equals("1")))
        {
          Register.this.authHd.sendEmptyMessage(1);
          return;
        }
        Register.this.authHd.sendEmptyMessage(0);
      }
    }
    .start();
  }

  private void goBack()
  {
    if (this.currentMode == 0)
    {
      finish();
      return;
    }
    this.currentMode = 0;
    this.titleTv.setText("注册新用户");
    this.userLayout.setVisibility(8);
  }

  private void jumpToUserLayout()
  {
    this.currentMode = 1;
    this.userLayout.setVisibility(0);
    this.basicLayout.setVisibility(8);
    this.titleTv.setText("完善信息");
    this.collegeList = new ArrayList();
    for (int i = 0; ; i++)
    {
      if (i >= COLLEGE_NAME_ARR.length)
        return;
      College localCollege = new College();
      localCollege.id = (i + 1);
      localCollege.name = COLLEGE_NAME_ARR[i];
      this.collegeList.add(localCollege);
    }
  }

  private void showGeneral()
  {
  }

  private void showSpinner()
  {
    if (this.popWd == null)
    {
      this.myAdapter = new MyAdapter(this);
      this.listView = new ListView(getApplicationContext());
      this.listView.setAdapter(this.myAdapter);
      this.listView.setDivider(getResources().getDrawable(2130837533));
      this.listView.setVerticalScrollBarEnabled(false);
      this.popWd = new PopupWindow(this.listView, this.collegeBtn.getWidth(), -2, true);
      this.popWd.setBackgroundDrawable(new ColorDrawable(-1));
      this.popWd.showAsDropDown(this.collegeBtn);
      return;
    }
    if (this.popWd.isShowing())
    {
      this.popWd.dismiss();
      return;
    }
    this.popWd.showAsDropDown(this.collegeBtn);
  }

  public void getCode()
  {
    this.phoneNum = this.phoneEt.getText().toString().trim();
    if (this.phoneNum.equals(""))
    {
      showToast("请输入手机号");
      return;
    }
    if (!ValidityCheck.isMobileNO(this.phoneNum))
    {
      showToast("输入的手机号格式不正确");
      return;
    }
    if (!NetworkConnection.isConnected(this))
    {
      this.authHd.sendEmptyMessage(-2);
      return;
    }
    this.getCodeBtn.setEnabled(false);
    timeTask();
    sendMess();
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton.getId() == 2131296358)
    {
      this.confirmRegBtn.setEnabled(paramBoolean);
      return;
    }
    this.womanRdBtn.setChecked(paramBoolean);
    RadioButton localRadioButton = this.manRdBtn;
    if (paramBoolean);
    for (boolean bool = false; ; bool = true)
    {
      localRadioButton.setChecked(bool);
      return;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131296351:
      goBack();
      return;
    case 2131296354:
      getCode();
      return;
    case 2131296360:
      validateBasicInfo();
      return;
    case 2131296359:
      showGeneral();
      return;
    case 2131296368:
      showSpinner();
      return;
    case 2131296370:
    }
    validateUserInfo();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903048);
    this.authPd = new ProgressDialog(this);
    this.generalTv = ((TextView)findViewById(2131296359));
    this.titleTv = ((TextView)findViewById(2131296258));
    this.phoneEt = ((EditText)findViewById(2131296353));
    this.codeEt = ((EditText)findViewById(2131296355));
    this.psdEt = ((EditText)findViewById(2131296356));
    this.rePasswordEt = ((EditText)findViewById(2131296357));
    this.userNameEt = ((EditText)findViewById(2131296362));
    this.emailEt = ((EditText)findViewById(2131296366));
    this.dormEt = ((EditText)findViewById(2131296369));
    this.getCodeBtn = ((Button)findViewById(2131296354));
    this.confirmRegBtn = ((Button)findViewById(2131296360));
    this.okBtn = ((Button)findViewById(2131296370));
    this.collegeBtn = ((Button)findViewById(2131296367));
    this.womanRdBtn = ((RadioButton)findViewById(2131296364));
    this.manRdBtn = ((RadioButton)findViewById(2131296365));
    this.genderRdGroup = ((RadioGroup)findViewById(2131296363));
    this.backImgV = ((ImageView)findViewById(2131296351));
    this.spinnerImgV = ((ImageView)findViewById(2131296368));
    this.agreeCb = ((CheckBox)findViewById(2131296358));
    this.basicLayout = ((LinearLayout)findViewById(2131296352));
    this.userLayout = ((LinearLayout)findViewById(2131296361));
    this.generalTv.setOnClickListener(this);
    this.getCodeBtn.setOnClickListener(this);
    this.confirmRegBtn.setOnClickListener(this);
    this.okBtn.setOnClickListener(this);
    this.backImgV.setOnClickListener(this);
    this.agreeCb.setOnCheckedChangeListener(this);
    this.spinnerImgV.setOnClickListener(this);
    this.genderRdGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
    {
      public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 2131296364)
        {
          Register.this.gender = "女";
          return;
        }
        Register.this.gender = "男";
      }
    });
    if (paramBundle != null)
    {
      this.currentMode = paramBundle.getInt("current_mode");
      this.phoneNum = paramBundle.getString("phone");
      if (this.currentMode == 0)
      {
        this.code = paramBundle.getString("code");
        this.password = paramBundle.getString("set_password");
        this.rePassword = paramBundle.getString("reinput_password");
        this.isAgree = paramBundle.getBoolean("isAgree");
        if (this.currentMode != 0)
//          break label639;
        this.basicLayout.setVisibility(0);
        this.userLayout.setVisibility(8);
        this.titleTv.setText("注册新用户");
        this.phoneEt.setText(this.phoneNum);
        this.codeEt.setText(this.code);
        this.psdEt.setText(this.password);
        this.rePasswordEt.setText(this.rePassword);
        this.agreeCb.setChecked(this.isAgree);
      }
    }
    while (true)
    {
//      return;
      this.userName = paramBundle.getString("userName");
      this.gender = paramBundle.getString("gender");
      this.email = paramBundle.getString("email");
      this.dorm = paramBundle.getString("dorm");
      this.collegeId = paramBundle.getInt("collegeId");
//      break;
      this.isAgree = true;
      this.currentMode = 0;
      this.gender = "女";
//      break;
      label639: this.basicLayout.setVisibility(8);
      this.userLayout.setVisibility(0);
      this.titleTv.setText("完善信息");
      this.emailEt.setText(this.email);
      this.dormEt.setText(this.dorm);
      if (this.gender.equals("女"))
      {
        this.womanRdBtn.setChecked(true);
        this.manRdBtn.setChecked(false);
      }
      while (this.collegeId != 0)
      {
        this.collegeBtn.setText(COLLEGE_NAME_ARR[(-1 + this.collegeId)]);
//        return;
        this.womanRdBtn.setChecked(false);
        this.manRdBtn.setChecked(true);
      }
    return; //modified added
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("current_mode", this.currentMode);
    if (this.currentMode == 0)
    {
      paramBundle.putString("phone", this.phoneEt.getText().toString());
      paramBundle.putString("code", this.codeEt.getText().toString());
      paramBundle.putString("set_password", this.psdEt.getText().toString());
      paramBundle.putString("reinput_password", this.rePasswordEt.getText().toString());
      paramBundle.putBoolean("isAgree", this.isAgree);
      return;
    }
    paramBundle.putString("userName", this.userNameEt.getText().toString());
    paramBundle.putString("email", this.emailEt.getText().toString());
    paramBundle.putString("dorm", this.dormEt.getText().toString());
    paramBundle.putString("gender", this.gender);
    paramBundle.putInt("collegeId", this.collegeId);
  }

  public void sendMess()
  {
    this.authPd.setMessage("正在发送请求...");
    this.authPd.show();
    new Thread()
    {
      public void run()
      {
        try
        {
          Register.this.returnCode = HttpConnection.post_register1(Register.this.phoneNum);
          if (Register.this.returnCode.length() == 6)
          {
            Register.this.authHd.sendEmptyMessage(2);
            return;
          }
          Register.this.authHd.sendEmptyMessage(-1);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    .start();
  }

  public void showToast(String paramString)
  {
    Toast.makeText(this, paramString, 0).show();
  }

  public void timeTask()
  {
    new Thread()
    {
      public void run()
      {
        Register.this.timeCount = 120;
        while (true)
        {
          if (Register.this.timeCount <= 0)
          {
            Register.this.timeHd.sendEmptyMessage(1);
            return;
          }
          Register.this.timeHd.sendEmptyMessage(0);
          try
          {
            Thread.sleep(1000L);
            Register localRegister = Register.this;
            localRegister.timeCount = (-1 + localRegister.timeCount);
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
        }
      }
    }
    .start();
  }

  public void validateBasicInfo()
  {
    this.phoneNum = this.phoneEt.getText().toString().trim();
    this.code = this.codeEt.getText().toString().trim();
    this.password = this.psdEt.getText().toString().trim();
    this.rePassword = this.rePasswordEt.getText().toString().trim();
    if (this.phoneNum.equals(""))
    {
      showToast("请输入手机号");
      return;
    }
    if (!ValidityCheck.isMobileNO(this.phoneNum))
    {
      showToast("输入的手机号格式不正确");
      return;
    }
    if (this.code.equals(""))
    {
      showToast("请输入短信激活码");
      return;
    }
    if (!this.code.equals(this.returnCode))
    {
      showToast("输入短信激活码有误");
      return;
    }
    if (this.password.equals(""))
    {
      showToast("请输入密码");
      return;
    }
    if ((this.password.length() < 6) || (this.password.length() > 20))
    {
      showToast("密码长度为6-20之间");
      return;
    }
    if (this.rePassword.equals(""))
    {
      showToast("请再次输入密码");
      return;
    }
    if (!this.rePassword.equals(this.password))
    {
      showToast("两次输入的密码不一致");
      return;
    }
    jumpToUserLayout();
  }

  public void validateUserInfo()
  {
    this.userName = this.userNameEt.getText().toString().trim();
    this.email = this.emailEt.getText().toString().trim();
    this.dorm = this.dormEt.getText().toString().trim();
    if (this.userName.equals(""))
    {
      showToast("请输入您的姓名");
      return;
    }
    if (this.email.equals(""))
    {
      showToast("请输入您的邮箱");
      return;
    }
    if (!ValidityCheck.isEmailAddress(this.email))
    {
      showToast("输入的邮箱格式不正确");
      return;
    }
    if (this.collegeId == 0)
    {
      showToast("请选择所在学校");
      return;
    }
    if (this.dorm.equals(""))
    {
      showToast("请输入所在宿舍");
      return;
    }
    if (!NetworkConnection.isConnected(this))
    {
      this.authHd.sendEmptyMessage(-2);
      return;
    }
    authen();
  }

  private class MyAdapter extends BaseAdapter
  {
    private LayoutInflater inflater;

    public MyAdapter(Context arg2)
    {
      Context localContext;
      this.inflater = LayoutInflater.from(arg2);
//      this.inflater = LayoutInflater.from(localContext);
    }

    public int getCount()
    {
      return Register.this.collegeList.size();
    }

    public Object getItem(int paramInt)
    {
      return Register.this.collegeList.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
      return 0L;
    }

    public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Register.ViewHolder localViewHolder;
      /**补充代码，临时解决编译报错--start*/ 
      localViewHolder = new Register.ViewHolder();
      /**补充代码，临时解决编译报错--end*/ 
      if (paramView == null)
      {
        localViewHolder = new Register.ViewHolder();
        paramView = this.inflater.inflate(2130903055, null);
        localViewHolder.tv = ((TextView)paramView.findViewById(2131296398));
        paramView.setTag(localViewHolder);
      }
      while (true)
      {
        localViewHolder.tv.setText(((College)Register.this.collegeList.get(paramInt)).name);
        localViewHolder.tv.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            Register.this.collegeId = (1 + paramInt);
            Register.this.collegeBtn.setText(((College)Register.this.collegeList.get(paramInt)).name);
            Register.this.popWd.dismiss();
          }
        });
        return paramView;
//        localViewHolder = (Register.ViewHolder)paramView.getTag();
      }
    }
  }

  static class ViewHolder
  {
    TextView tv;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.Register
 * JD-Core Version:    0.6.2
 */