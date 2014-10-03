package com.ghost.xianyu;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.ghost.xianyu.encrytion.AESEncryptor;
import com.ghost.xianyu.internet.HttpConnection;
import com.ghost.xianyu.internet.NetworkConnection;
import com.ghost.xianyu.util.DownloadApkFile;
import com.ghost.xianyu.util.FileManager;
import com.ghost.xianyu.util.MyPreference;
import com.ghost.xianyu.util.NetworkReceiver;
import com.ghost.xianyu.view.BadgeView;
import com.taobao.top.android.TopAndroidClient;
import com.taobao.top.android.api.TopTqlListener;

// Referenced classes of package com.ghost.xianyu:
//            Cart, OrderQuery, Login

public class Home extends Activity
    implements android.view.View.OnClickListener
{
	   public static int cartNum;
	    public static String detail_url;
	    public static String ems_fee;
	    public static String express_fee;
	    public static String freight_payer;
	    private static Boolean hasTask = Boolean.valueOf(false);
	    private static Boolean isExit = Boolean.valueOf(false);
	    public static String location_city;
	    public static String location_state;
	    public static String nick;
	    public static String num;
	    public static String num_iid;
	    public static String otherStore = "";
	    public static String otherTitle = "";
	    public static String otherUrl = "";
	    public static String password;
	    public static String phoneNum;
	    public static String pic_url;
	    public static String post_fee;
	    public static String price;
	    public static String promo_price = "0";
	    public static String promo_type = "";
	    public static ArrayList propertyList = new ArrayList();
	    public static String property_alias;
	    public static ArrayList skusList = new ArrayList();
	    public static int stepId;
	    public static String store;
	    public static String stuff_status;
	    public static String title;
	    public static String type;
	    final String TAG = "Home";
	    private ImageView amazonImgV;
	    private BadgeView badge;
	    private ImageView cartImgV;
	    private TopAndroidClient client;
	    private ImageView createImgV;
	    private ImageView dangdangImgV;
	    private ImageView dianpingImgV;
	    private DownloadApkFile downloadApkFile;
	    private Handler downloadApkHd;
	    private ImageView goBackImgV;
	    private ImageView goForwardImgV;
	    private Handler handler;
	    private ImageView homeImgV;
	    private RelativeLayout homeLayout;
	    private ImageView homeStepImgV;
	    private ImageView jdImgV;
	    private ImageView jumeiImgV;
	    private ImageView lefengImgV;
	    private ProgressDialog loadPd;
	    private ProgressBar loadingPagePb;
	    String mUrl;
	    private RelativeLayout mainLayout;
	    private ImageView mallImgV;
	    private LinearLayout mallLayout;
	    private ImageView meituanImgV;
	    private ImageView myCartImgV;
	    private ImageView payImgV;
	    private ProgressDialog pd;
	    private ImageView queryImgV;
	    private ImageView refreshImgV;
	    private EditText searchEt;
	    private ImageView searchImgV;
	    private RelativeLayout searchLayout;
	    private ImageView searchPageImgV;
	    Timer tExit;
	    private ImageView taobaoImgV;
	    TimerTask task;
	    private ImageView vanclImgV;
	    private ImageView vipshopImgV;
	    private WebView webView;
	    private ImageView yhdImgV;


    public Home()
    {
        mUrl = "";
        client = TopAndroidClient.getAndroidClientByAppKey("21509472");
        tExit = new Timer();
        task = new  TimerTask() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
			}
		};     
//		/* anonymous class not found */
//        class _anm1 {};
        handler = new Handler();    
//        /* anonymous class not found */
//        class _anm2 {};
        downloadApkHd = new Handler();   
//        /* anonymous class not found */
//        class _anm3 {};
    }

    private String getId()
    {
        if(mUrl.contains("item_id="))
        {
            String s1 = mUrl.substring(8 + mUrl.indexOf("item_id="));
            return s1.substring(0, s1.indexOf("&"));
        }
        int i = mUrl.indexOf("com/i");
        int j = mUrl.indexOf(".htm");
        if(i > 0 && j > 0)
            return mUrl.substring(i + 5, j);
        int k = mUrl.indexOf("detail.htm?id=");
        if(k > 0)
        {
            String s = mUrl.substring(k);
            int l = s.indexOf("&");
            if(l > 0)
                return s.substring(14, l);
        }
        return "";
    }

    private void goBack()
    {
        if(webView.canGoBack())
            webView.goBack();
    }

    private void goForward()
    {
        if(webView.canGoForward())
            webView.goForward();
    }

    private void goHome()
    {
        homeLayout.setVisibility(0);
        mainLayout.setVisibility(8);
        mallLayout.setVisibility(0);
    }

    private void goMyCart()
    {
        startActivity(new Intent(this, Cart.class));
    }

    private void goMyOrder()
    {
        if(!NetworkConnection.isConnected(this))
        {
            handler.sendEmptyMessage(0);
            return;
        } else
        {
            startActivity(new Intent(this, OrderQuery.class));
            return;
        }
    }

    private void goSearchPage()
    {
        mallLayout.setVisibility(8);
        searchLayout.setVisibility(0);
    }

    private void initShoppingInfo()
    {
        propertyList.clear();
        skusList.clear();
        otherTitle = "";
        stuff_status = "";
        type = "";
        property_alias = "";
        location_state = "";
        location_city = "";
        title = "";
        detail_url = "";
        nick = "";
        store = "";
        pic_url = "";
        num = "";
        price = "";
        freight_payer = "";
        post_fee = "";
        express_fee = "";
        ems_fee = "";
        promo_type = "";
        promo_price = "0";
    }

    private void parseInfo()
    {
        initShoppingInfo();
        String s = (new StringBuilder(String.valueOf((new StringBuilder("{select promotions from taobao.ump.promotion.get where item_id=")).append(num_iid).append("}").toString()))).append("{select title,detail_url,nick,pic_url,num,price,freight_payer,post_fee,express_fee,ems_fee,stuff_status,type,location.state,location.city,property_alias,sku.sku_id,sku.properties_name,sku.properties,sku.price,sku.quantity from item where num_iid=").append(num_iid).append("}").toString();
        client.tql(s, null, new TopTqlListener() {
			
			@Override
			public void onException(Exception paramException) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onComplete(String paramString) {
				// TODO Auto-generated method stub
				
			}
		}
//        		new  Object()     /* anonymous class not found */
//    class _anm10 {}
        , true);
    }

    private void parseOtherInfo()
    {
//        (new  Object()     /* anonymous class not found */
//    class _anm9 {}
//
//).start();
    }

    private void refreshPage()
    {
        if(!NetworkConnection.isConnected(this))
        {
            handler.sendEmptyMessage(0);
            return;
        } else
        {
            webView.loadUrl(mUrl);
            return;
        }
    }

    private void searchPage()
    {
        String s = searchEt.getText().toString().trim();
        if(s.equals(""))
        {
            Toast.makeText(this, "\u8BF7\u8F93\u5165\u641C\u7D22\u5185\u5BB9", 0).show();
            return;
        } else
        {
            homeLayout.setVisibility(8);
            mainLayout.setVisibility(0);
            webView.loadUrl((new StringBuilder("http://www.baidu.com/s?wd=")).append(s).toString());
            ((InputMethodManager)getSystemService("input_method")).toggleSoftInput(0, 2);
            return;
        }
    }

    private void setSession()
    {
//        (new  Object()     /* anonymous class not found */
//    class _anm5 {}
//
//).start();
    }

    private void showMallPage()
    {
        mallLayout.setVisibility(0);
        searchLayout.setVisibility(8);
    }

    private void showWebPage(String s)
    {
        webView.loadUrl(s);
        if(stepId == 1)
        {
            homeLayout.setVisibility(8);
            mallLayout.setVisibility(8);
            mainLayout.setVisibility(8);
            searchLayout.setVisibility(8);
            webView.setVisibility(8);
            homeStepImgV.setBackgroundResource(0x7f02002c);
            homeStepImgV.setVisibility(0);
            return;
        } else
        {
            homeLayout.setVisibility(8);
            mainLayout.setVisibility(0);
            webView.setVisibility(0);
            return;
        }
    }

    private void submitLink()
    {
        if(stepId == 2)
        {
            homeLayout.setVisibility(8);
            mainLayout.setVisibility(8);
            webView.setVisibility(8);
            homeStepImgV.setBackgroundResource(0x7f02002d);
            homeStepImgV.setVisibility(0);
            return;
        }
        if(!NetworkConnection.isConnected(this))
        {
            handler.sendEmptyMessage(0);
            return;
        }
        num_iid = getId();
        if((mUrl.contains("taobao") || mUrl.contains("tmall")) && num_iid.equals(""))
        {
            Toast.makeText(this, "\u8BF7\u9009\u62E9\u5546\u54C1", 0).show();
            return;
        }
        loadPd = new ProgressDialog(this);
        loadPd.setMessage("\u52A0\u8F7D\u4E2D...");
        loadPd.show();
        if(num_iid.equals(""))
        {
            parseOtherInfo();
            return;
        } else
        {
            parseInfo();
            return;
        }
    }

    public void createUpdateDialog()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("\u8F6F\u4EF6\u5347\u7EA7")
        	   .setMessage("\u53D1\u73B0\u65B0\u7248\u672C,\u5EFA\u8BAE\u7ACB\u5373\u66F4\u65B0\u4F7F\u7528.")
        	   .setPositiveButton("\u7ACB\u5373\u66F4\u65B0", new DialogInterface.OnClickListener() {
				
				@Override
				public void onClick(DialogInterface arg0, int arg1) {
					// TODO Auto-generated method stub
					
				}
			}
//        			   new  Object()     /* anonymous class not found */
//    class _anm6 {}
        	   ).setNegativeButton("\u6682\u4E0D\u66F4\u65B0", new DialogInterface.OnClickListener() {
				
				@Override
				public void onClick(DialogInterface arg0, int arg1) {
					// TODO Auto-generated method stub
					
				}
			}
//        			   new  Object()     /* anonymous class not found */
//    class _anm7 {}
);
        builder.create().show();
    }

    public void downloadApk(String s)
    {
        if(!Environment.getExternalStorageState().equals("mounted"))
        {
            downloadApkHd.sendEmptyMessage(-2);
            return;
        } else
        {
            pd = new ProgressDialog(this);
            pd.setProgressStyle(1);
            pd.setCancelable(false);
            pd.setMessage("\u6B63\u5728\u66F4\u65B0\u4E2D...");
            pd.setButton(-2, "\u53D6\u6D88", new Message()
//            		new  Object()     /* anonymous class not found */
//    class _anm8 {}
            		);
            pd.show();
            downloadApkFile = new DownloadApkFile(s, pd, downloadApkHd);
            (new Thread(downloadApkFile)).start();
            return;
        }
    }

    public void installApk()
    {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File((new StringBuilder(String.valueOf(FileManager.path))).append("/XianYu/Download").toString(), "\u54B8\u9C7C\u4EE3\u4ED8.apk")), "application/vnd.android.package-archive");
        intent.setFlags(0x10000000);
        startActivity(intent);
    }

    public boolean isGetLinkInfo(String s)
        throws IOException
    {
    	return false; // junk code
//        int i;
//        otherUrl = mUrl;
//        i = mUrl.indexOf(".com/");
//        if(i >= 0) goto _L2; else goto _L1
//_L1:
//        i = mUrl.indexOf(".cn/");
//        if(i >= 0) goto _L2; else goto _L3
//_L3:
//        return false;
//_L2:
//        String s1;
//        int j;
//        s1 = mUrl.substring(0, i);
//        j = s1.lastIndexOf(".");
//        if(j < 0) goto _L3; else goto _L4
//_L4:
//        String s2;
//        int k;
//        int l;
//        BufferedReader bufferedreader;
//        otherStore = s1.substring(j + 1);
//        s2 = "";
//        k = -1;
//        l = -1;
//        bufferedreader = new BufferedReader(new InputStreamReader(((HttpURLConnection)(new URL(s)).openConnection()).getInputStream()));
//_L6:
//        String s3 = bufferedreader.readLine();
//        if(s3 != null)
//        {
//            s2 = (new StringBuilder(String.valueOf(s2))).append(s3).append("\n").toString();
//            if(k < 0)
//                k = s2.indexOf("<title>");
//            if(l < 0)
//                l = s2.indexOf("</title>");
//            if(k <= 0 || l <= 0)
//                continue; /* Loop/switch isn't completed */
//            otherTitle = s2.substring(k + 7, l);
//        }
//        return true;
//        if(true) goto _L6; else goto _L5
//_L5:
    }

    public void onClick(View view)
    {
        switch(view.getId())
        {
        case 2131296276: 
        case 2131296277: 
        case 2131296278: 
        case 2131296279: 
        case 2131296280: 
        case 2131296282: 
        case 2131296298: 
        case 2131296302: 
        case 2131296303: 
        default:
            return;

        case 2131296281: 
            searchPage();
            return;

        case 2131296307: 
            goHome();
            return;

        case 2131296306: 
            refreshPage();
            return;

        case 2131296301: 
            goMyCart();
            return;

        case 2131296305: 
            goForward();
            return;

        case 2131296304: 
            goBack();
            return;

        case 2131296300: 
            submitLink();
            return;

        case 2131296299: 
            goHome();
            return;

        case 2131296295: 
            showMallPage();
            return;

        case 2131296296: 
            goMyOrder();
            return;

        case 2131296297: 
            goMyCart();
            return;

        case 2131296294: 
            goSearchPage();
            return;

        case 2131296283: 
            showWebPage("http://ai.m.taobao.com/?pid=mm_32878410_4272694_14502053&eventid=858300");
            return;

        case 2131296284: 
            showWebPage("http://m.jumei.com/");
            return;

        case 2131296285: 
            showWebPage("http://wap.lefeng.com/index.php/home/index/guid/5279974daffaa216107509");
            return;

        case 2131296286: 
            showWebPage("http://m.vancl.com/");
            return;

        case 2131296287: 
            showWebPage("http://m.yhd.com/");
            return;

        case 2131296288: 
            showWebPage("http://m.vipshop.com/");
            return;

        case 2131296289: 
            showWebPage("http://m.dangdang.com/");
            return;

        case 2131296290: 
            Toast.makeText(this, "\u8BF7\u9009\u62E9\u5546\u54C1", 0).show();
            showWebPage("http://m.jd.com/");
            return;

        case 2131296291: 
            showWebPage("http://z.cn/");
            return;

        case 2131296292: 
            showWebPage("http://m.meituan.com/");
            return;

        case 2131296293: 
            showWebPage("http://m.dianping.com/");
            return;

        case 2131296275: 
            break;
        }
        if(stepId == 0)
        {
            homeLayout.setVisibility(0);
            mallLayout.setVisibility(0);
            mainLayout.setVisibility(8);
            searchLayout.setVisibility(8);
            stepId = 1;
        } else
        {
            homeLayout.setVisibility(8);
            mainLayout.setVisibility(0);
            webView.setVisibility(0);
            if(stepId == 2)
            {
                stepId = 3;
                submitLink();
            } else
            {
                stepId = 2;
            }
        }
        homeStepImgV.setVisibility(8);
        MyPreference.setStep(this, stepId);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030003);
        homeLayout = (RelativeLayout)findViewById(0x7f090014);
        mainLayout = (RelativeLayout)findViewById(0x7f09002a);
        searchLayout = (RelativeLayout)findViewById(0x7f090016);
        mallLayout = (LinearLayout)findViewById(0x7f09001a);
        goBackImgV = (ImageView)findViewById(0x7f090030);
        goForwardImgV = (ImageView)findViewById(0x7f090031);
        refreshImgV = (ImageView)findViewById(0x7f090032);
        createImgV = (ImageView)findViewById(0x7f090033);
        cartImgV = (ImageView)findViewById(0x7f09002d);
        payImgV = (ImageView)findViewById(0x7f09002c);
        homeImgV = (ImageView)findViewById(0x7f09002b);
        taobaoImgV = (ImageView)findViewById(0x7f09001b);
        jumeiImgV = (ImageView)findViewById(0x7f09001c);
        lefengImgV = (ImageView)findViewById(0x7f09001d);
        vanclImgV = (ImageView)findViewById(0x7f09001e);
        yhdImgV = (ImageView)findViewById(0x7f09001f);
        vipshopImgV = (ImageView)findViewById(0x7f090020);
        dangdangImgV = (ImageView)findViewById(0x7f090021);
        jdImgV = (ImageView)findViewById(0x7f090022);
        amazonImgV = (ImageView)findViewById(0x7f090023);
        meituanImgV = (ImageView)findViewById(0x7f090024);
        dianpingImgV = (ImageView)findViewById(0x7f090025);
        searchImgV = (ImageView)findViewById(0x7f090026);
        mallImgV = (ImageView)findViewById(0x7f090027);
        queryImgV = (ImageView)findViewById(0x7f090028);
        myCartImgV = (ImageView)findViewById(0x7f090029);
        searchPageImgV = (ImageView)findViewById(0x7f090019);
        homeStepImgV = (ImageView)findViewById(0x7f090013);
        searchEt = (EditText)findViewById(0x7f090018);
        loadingPagePb = (ProgressBar)findViewById(0x7f090034);
        webView = (WebView)findViewById(0x7f09002e);
        badge = new BadgeView(this, cartImgV);
        SharedPreferences sharedpreferences = getSharedPreferences("user_info", 0);
        cartNum = sharedpreferences.getInt("cartNum", 0);
        HttpConnection.php_sessid = sharedpreferences.getString("sessionId", null);
        phoneNum = sharedpreferences.getString("phone", "");
        stepId = sharedpreferences.getInt("stepId", 0);
        try
        {
            password = AESEncryptor.decrypt(AESEncryptor.MAK, sharedpreferences.getString("password", ""));
        }
        catch(Exception exception)
        {
            password = "";
            exception.printStackTrace();
        }
        webView.requestFocusFromTouch();
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.setWebViewClient(new WebViewClient()
//        		new  Object()     /* anonymous class not found */
//    class _anm4 {}
        		);
        if(stepId == 0)
        {
            homeLayout.setVisibility(8);
            mallLayout.setVisibility(8);
            mainLayout.setVisibility(8);
            searchLayout.setVisibility(8);
            homeStepImgV.setVisibility(0);
        } else
        {
            homeLayout.setVisibility(0);
            mallLayout.setVisibility(0);
            mainLayout.setVisibility(8);
            searchLayout.setVisibility(8);
        }
        createImgV.setOnClickListener(this);
        refreshImgV.setOnClickListener(this);
        goForwardImgV.setOnClickListener(this);
        goBackImgV.setOnClickListener(this);
        cartImgV.setOnClickListener(this);
        payImgV.setOnClickListener(this);
        homeImgV.setOnClickListener(this);
        taobaoImgV.setOnClickListener(this);
        jumeiImgV.setOnClickListener(this);
        lefengImgV.setOnClickListener(this);
        vanclImgV.setOnClickListener(this);
        yhdImgV.setOnClickListener(this);
        vipshopImgV.setOnClickListener(this);
        dangdangImgV.setOnClickListener(this);
        jdImgV.setOnClickListener(this);
        amazonImgV.setOnClickListener(this);
        meituanImgV.setOnClickListener(this);
        dianpingImgV.setOnClickListener(this);
        searchImgV.setOnClickListener(this);
        mallImgV.setOnClickListener(this);
        queryImgV.setOnClickListener(this);
        myCartImgV.setOnClickListener(this);
        searchPageImgV.setOnClickListener(this);
        homeStepImgV.setOnClickListener(this);
        if(NetworkConnection.isConnected(this))
        {
            NetworkReceiver.isConnection = true;
            setSession();
            return;
        } else
        {
            NetworkReceiver.isConnection = false;
            return;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        menu.add(0, 0, 0, "\u9000\u51FA");
        menu.add(0, 1, 0, "\u6CE8\u9500");
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if(i == 4)
        {
            if(webView.canGoBack())
                webView.goBack();
            else
            if(!isExit.booleanValue())
            {
                isExit = Boolean.valueOf(true);
                Toast.makeText(this, "\u518D\u6309\u4E00\u6B21\u8FD4\u56DE\u952E\u9000\u51FA\u54B8\u9C7C", 0).show();
                if(!hasTask.booleanValue())
                {
                    tExit.schedule(task, 3000L);
                    return true;
                }
            } else
            {
                finish();
                System.exit(0);
                return true;
            }
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem)
    {	
    	return false; // junk code
//        menuitem.getItemId();
//        JVM INSTR tableswitch 0 1: default 28
//    //                   0 35
//    //                   1 42;
//           goto _L1 _L2 _L3
//_L1:
//        return super.onMenuItemSelected(i, menuitem);
//_L2:
//        finish();
//        continue; /* Loop/switch isn't completed */
//_L3:
//        MyPreference.setIsLogin(this, false);
//        MyPreference.setSessionId(this, null);
//        startActivity(new Intent(this, com/ghost/xianyu/Login));
//        finish();
//        if(true) goto _L1; else goto _L4
//_L4:
    }

    protected void onResume()
    {
        super.onResume();
        if(cartNum > 0)
        {
            badge.setText((new StringBuilder()).append(cartNum).toString());
            if(!badge.isShown())
                badge.show();
        } else
        if(badge.isShown())
        {
            badge.hide();
            return;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("url", mUrl);
    }

 







}