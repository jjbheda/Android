package com.ghost.xianyu;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.ghost.xianyu.internet.HttpConnection;
import com.ghost.xianyu.internet.NetworkConnection;
import com.ghost.xianyu.util.ValidityCheck;

public class PasswrodRetake extends Activity
  implements View.OnClickListener
{
  static final int FAILURE = -1;
  static final int NO_NETWORK = 0;
  static final int SEND_CODE = 1;
  static final int SEND_CODE_FAIL = -2;
  static final int SEND_SUCCESS = 2;
  static final int SET_AGAIN = 2;
  static final int SUCCESS = 1;
  Handler authHd = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      PasswrodRetake.this.authPd.dismiss();
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 2:
        PasswrodRetake.this.showToast("已发送验证码");
        PasswrodRetake.this.jumpToNext();
        return;
      case 1:
        PasswrodRetake.this.showToast("密码修改成功");
        PasswrodRetake.this.finish();
        return;
      case 0:
        PasswrodRetake.this.showToast("网络连接不可用");
        return;
      case -1:
        PasswrodRetake.this.showToast("网络错误，请稍后重试");
        return;
      case -2:
      }
      PasswrodRetake.this.showToast("获取验证码错误，请重新获取");
    }
  };
  private ProgressDialog authPd;
  ImageView backImgV;
  String code;
  EditText codeEt;
  int currentMode;
  String newPsd;
  EditText newPsdEt;
  EditText newPsdReinputEt;
  String newReinputPsd;
  Button nextBtn;
  Button okBtn;
  EditText phoneEt;
  String phoneNum;
  String returnCode = "";
  LinearLayout sendCodeLayout;
  LinearLayout writeNewLayout;

  private void authen()
  {
    this.authPd.setMessage("正在提交信息...");
    this.authPd.show();
    new Thread()
    {
      public void run()
      {
        PasswrodRetake.this.returnCode = HttpConnection.post_findPassword2(PasswrodRetake.this.phoneNum, PasswrodRetake.this.newPsd);
        if ((PasswrodRetake.this.returnCode != null) && (PasswrodRetake.this.returnCode.equals("1")))
        {
          PasswrodRetake.this.authHd.sendEmptyMessage(1);
          return;
        }
        PasswrodRetake.this.authHd.sendEmptyMessage(-1);
      }
    }
    .start();
  }

  private void jumpToNext()
  {
    this.currentMode = 2;
    this.writeNewLayout.setVisibility(0);
    this.sendCodeLayout.setVisibility(8);
  }

  private void sendMessToServer()
  {
    this.authPd.setMessage("正在发送信息...");
    this.authPd.show();
    new Thread()
    {
      public void run()
      {
        try
        {
          PasswrodRetake.this.returnCode = HttpConnection.post_findPassword1(PasswrodRetake.this.phoneNum);
          if (PasswrodRetake.this.returnCode.trim().length() == 6)
          {
            PasswrodRetake.this.authHd.sendEmptyMessage(2);
            return;
          }
          PasswrodRetake.this.authHd.sendEmptyMessage(-2);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          PasswrodRetake.this.authHd.sendEmptyMessage(-2);
        }
      }
    }
    .start();
  }

  private void validateOtherInfo()
  {
    this.code = this.codeEt.getText().toString().trim();
    this.newPsd = this.newPsdEt.getText().toString().trim();
    this.newReinputPsd = this.newPsdReinputEt.getText().toString().trim();
    if (this.code.equals(""))
    {
      showToast("请输入短信激活码");
      return;
    }
    if (!this.code.equals(this.returnCode))
    {
      showToast("短信激活码不正确");
      return;
    }
    if (this.newPsd.equals(""))
    {
      showToast("请输入新密码");
      return;
    }
    if ((this.newPsd.length() < 6) || (this.newPsd.length() > 20))
    {
      showToast("密码长度为6-20之间");
      return;
    }
    if (this.newReinputPsd.equals(""))
    {
      showToast("请再次输入新密码");
      return;
    }
    if (!this.newReinputPsd.equals(this.newPsd))
    {
      showToast("两次输入的密码不一致");
      return;
    }
    if (!NetworkConnection.isConnected(this))
    {
      this.authHd.sendEmptyMessage(0);
      return;
    }
    authen();
  }

  private void validatePhone()
  {
    this.phoneNum = this.phoneEt.getText().toString().trim();
    if (this.phoneNum.equals(""))
    {
      Toast.makeText(this, "请输入手机号", 0).show();
      return;
    }
    if (!ValidityCheck.isMobileNO(this.phoneNum))
    {
      Toast.makeText(this, "输入的手机号格式不正确", 0).show();
      return;
    }
    if (!NetworkConnection.isConnected(this))
    {
      this.authHd.sendEmptyMessage(0);
      return;
    }
    if (!NetworkConnection.isConnected(this))
    {
      this.authHd.sendEmptyMessage(0);
      return;
    }
    sendMessToServer();
  }

  public void goBack()
  {
    if (this.currentMode == 1)
    {
      finish();
      return;
    }
    this.currentMode = 1;
    this.sendCodeLayout.setVisibility(0);
    this.writeNewLayout.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131296268:
      validatePhone();
      return;
    case 2131296273:
      validateOtherInfo();
      return;
    case 2131296265:
    }
    goBack();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903041);
    this.authPd = new ProgressDialog(this);
    this.phoneEt = ((EditText)findViewById(2131296267));
    this.codeEt = ((EditText)findViewById(2131296270));
    this.newPsdEt = ((EditText)findViewById(2131296271));
    this.newPsdReinputEt = ((EditText)findViewById(2131296272));
    this.nextBtn = ((Button)findViewById(2131296268));
    this.okBtn = ((Button)findViewById(2131296273));
    this.backImgV = ((ImageView)findViewById(2131296265));
    this.sendCodeLayout = ((LinearLayout)findViewById(2131296266));
    this.writeNewLayout = ((LinearLayout)findViewById(2131296269));
    this.nextBtn.setOnClickListener(this);
    this.okBtn.setOnClickListener(this);
    this.backImgV.setOnClickListener(this);
    if (paramBundle != null)
    {
      this.currentMode = paramBundle.getInt("currentMode");
      if (this.currentMode == 1)
      {
        this.phoneNum = paramBundle.getString("phone");
        this.writeNewLayout.setVisibility(8);
        this.sendCodeLayout.setVisibility(0);
        this.phoneEt.setText(this.phoneNum);
        return;
      }
      this.code = paramBundle.getString("code");
      this.newPsd = paramBundle.getString("newPsd");
      this.newReinputPsd = paramBundle.getString("newReinputPsd");
      this.writeNewLayout.setVisibility(0);
      this.sendCodeLayout.setVisibility(8);
      this.codeEt.setText(this.code);
      this.newPsdEt.setText(this.newPsd);
      this.newPsdReinputEt.setText(this.newReinputPsd);
      return;
    }
    this.currentMode = 1;
    this.writeNewLayout.setVisibility(8);
    this.sendCodeLayout.setVisibility(0);
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("phone", this.phoneEt.getText().toString().trim());
    paramBundle.putString("code", this.codeEt.getText().toString().trim());
    paramBundle.putString("newPsd", this.newPsdEt.getText().toString().trim());
    paramBundle.putString("newReinputPsd", this.newPsdReinputEt.getText().toString().trim());
    paramBundle.putInt("currentMode", this.currentMode);
  }

  public void showToast(String paramString)
  {
    Toast.makeText(this, paramString, 0).show();
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.ghost.xianyu.PasswrodRetake
 * JD-Core Version:    0.6.2
 */