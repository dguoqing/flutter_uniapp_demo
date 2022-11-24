
package com.example.fultter_uniapp_demo_dgq;

import android.util.Log;
import android.view.View;
import android.content.Context;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

import io.dcloud.feature.sdk.MenuActionSheetItem;
import io.dcloud.feature.sdk.DCSDKInitConfig;
import io.dcloud.feature.sdk.DCUniMPSDK;
import io.dcloud.feature.sdk.Interface.IDCUniMPPreInitCallback;
import io.dcloud.feature.sdk.Interface.IUniMP;

import io.dcloud.feature.unimp.config.UniMPOpenConfiguration;

import org.json.JSONException;

import java.util.ArrayList;
import java.util.List;

public class FlutterUniappPlugin  extends FlutterActivity {
    private static final String CHANNEL = "flutter_uni_dongguoqing";
    private static final String TAG = "MainActivity";
    Context mContext;
  
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    super.configureFlutterEngine(flutterEngine);
    mContext = this;
      new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
          .setMethodCallHandler(
            (call, result) -> {
              // This method is invoked on the main thread.
              // TODO
              if(call.method.equals("console")){
                console();
              }else if(call.method.equals("open")){
                openUni();
              }else if(call.method.equals("init")){
                initUni();
              }
            }
          );
    }

    private void console(){
        Log.e(TAG, "console我是打印的时间: ");
    }

    private void initUni(){
      //初始化 uni小程序SDK ----start----------
      MenuActionSheetItem item = new MenuActionSheetItem("关于", "gy");

      MenuActionSheetItem item1 = new MenuActionSheetItem("获取当前页面url", "hqdqym");
      MenuActionSheetItem item2 = new MenuActionSheetItem("跳转到宿主原生测试页面", "gotoTestPage");
      List<MenuActionSheetItem> sheetItems = new ArrayList<>();
      sheetItems.add(item);
      sheetItems.add(item1);
      sheetItems.add(item2);
      Log.i("unimp","onCreate----");
      DCSDKInitConfig config = new DCSDKInitConfig.Builder()
              .setCapsule(true)
              .setMenuDefFontSize("16px")
              .setMenuDefFontColor("#ff00ff")
              .setMenuDefFontWeight("normal")
              .setMenuActionSheetItems(sheetItems)
              .setEnableBackground(true)//开启后台运行
              .setUniMPFromRecents(true)
              .build();
      DCUniMPSDK.getInstance().initialize(this, config, new IDCUniMPPreInitCallback() {
          @Override
          public void onInitFinished(boolean b) {
              Log.i("unimp","onInitFinished----"+b);
          }
      });
      //初始化 uni小程序SDK ----end----------
    }

    private void openUni(){
      try {
        UniMPOpenConfiguration uniMPOpenConfiguration = new UniMPOpenConfiguration();
        // uniMPOpenConfiguration.splashClass = MySplashView.class;
        IUniMP uniMP = DCUniMPSDK.getInstance().openUniMP(mContext,"__UNI__E268D54", uniMPOpenConfiguration);
        // mUniMPCaches.put(uniMP.getAppid(), uniMP);
    } catch (Exception e) {
        e.printStackTrace();
    }
    }
}