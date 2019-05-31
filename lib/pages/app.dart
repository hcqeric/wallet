import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wallet/res/colors.dart';
import 'login_page.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '雏蜂生活',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: app_main,
      ),
      // initialRoute: '/login',
      // onGenerateRoute: _getRoute,
    );
  }

  //初始化路由器设置
  Route _getRoute(RouteSettings settings) {
    if (settings.name != "/login") {
      return null;
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }

  //统一主题设置
  ThemeData _buildWalletTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      accentColor: Colors.white,
      primaryColor: app_main,
      buttonColor: app_main,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
