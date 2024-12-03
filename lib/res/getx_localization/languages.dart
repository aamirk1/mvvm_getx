import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'MVVM GetX',
          'internet_exception': 'No Internet Connection',
          'general_exception': 'Something went wrong',
          'retry': 'Retry',
          'welcome_back': 'Welcome \n Back',
          'login': 'Login',
          'email_hint': 'Email',
          'password_hint': 'Password'
        },
        'hi_IN': {
          'app_name': 'मीवीएमवीएक्स',
          'internet_exception': 'इंटरनेट कनेक्शन नहीं है',
          'general_exception': 'कुछ गलत हो गया है',
          'retry': 'पुनर्स्थापना',
          'welcome_back': 'स्वागत है',
          'login': 'लॉगिन',
          'email_hint': 'ईमेल',
          'password_hint': 'पासवर्ड'
        },
        'zh_CN': {
          'app_name': 'MVVM GetX',
          'internet_exception': '无网络连接',
          'general_exception': '出错了',
          'retry': '重试',
          'welcome_back': '欢迎回来',
          'login': '登录',
          'email_hint': '邮箱',
          'password_hint': '密码'
        },
        'ja_JP': {
          'app_name': 'MVVM GetX',
          'internet_exception': 'インターネット接続がありません',
          'general_exception': '何かが間違っています',
          'retry': '再試行',
          'welcome_back': 'ようこそ',
          'login': 'ログイン',
          'email_hint': 'メール',
          'password_hint': 'パスワード'
        },
      };
}
