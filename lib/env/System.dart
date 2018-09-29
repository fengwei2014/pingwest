/// 系统相关的类
/// 设置为系统全局
/// 
import 'dart:io'; //设备硬件相关
import 'dart:ui'; //视图相关

main(List<String> arguments) {
  //第一种方法：获取操作系统的字符串
  String os = Platform.operatingSystem;
  print('你使用的是 $os');
  
  getSystemInfo();
}

void getSystemInfo() {
    print('============================== Platform / ========================');
    print(Platform.isIOS);
    print(Platform.operatingSystem);
    print(Platform.operatingSystemVersion);
    print(Platform.localHostname);
    print(Platform.localeName);
    print('============================== / Platform ========================');

    print('============================== window / ==========================');
    print('window.physicalSize.height: ' + window.physicalSize.height.toString());
    print('window.physicalSize.width: '+ window.physicalSize.width.toString());
    print(window.devicePixelRatio);
    print('really height: '+ (window.physicalSize.height/window.devicePixelRatio).toString());
    print('really width: '+ (window.physicalSize.width/window.devicePixelRatio).toString());
    print('============================== / window ==========================');
}