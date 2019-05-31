import 'package:flutter/material.dart';
import '../res/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'register_page.dart';
import 'index_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //init
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    print('login');
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(96)),
          children: <Widget>[
            SizedBox(height: ScreenUtil().setHeight(200)),
            Text('欢迎来到雏蜂生活',
                style: TextStyle(
                  color: app_main,
                  fontSize: 28.0,
                )),
            SizedBox(height: ScreenUtil().setHeight(100)),
            Text(
              '用户登录',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(38)),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: '手机号',
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(12.0)),
            Stack(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: '验证码',
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: FlatButton(
                    child: Text(
                      '获取验证码',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      side: BorderSide(color: app_main, width: 1.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(120)),
            RaisedButton(
              color: app_main,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndexPage(),
                    ));
              },
              child: Text(
                '登录',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(150),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('没有账号？'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ));
                  },
                  child: Text(
                    ' 去注册 ',
                    style: TextStyle(color: app_main),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
