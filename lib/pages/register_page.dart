import 'package:flutter/material.dart';
import '../res/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: app_main),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(96)),
          children: <Widget>[
            SizedBox(height: ScreenUtil().setHeight(100)),
            Text('欢迎来到雏蜂生活',
                style: TextStyle(
                  color: app_main,
                  fontSize: 28.0,
                )),
            SizedBox(height: ScreenUtil().setHeight(60)),
            Text(
              '用户注册',
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
            SizedBox(height: ScreenUtil().setHeight(12.0)),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: '推荐人手机号'),
            ),
            SizedBox(height: ScreenUtil().setHeight(12)),
            Row(
              children: <Widget>[
                Radio(
                  activeColor: app_main,
                  onChanged: (bool bol) {},
                  value: null,
                  groupValue: null,
                ),
                Text('已阅读并同意'),
                InkWell(
                  child: Text(
                    '《用户服务协议》',
                    style: TextStyle(color: app_main),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(60)),
            RaisedButton(
              color: app_main,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                '注册',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.symmetric(vertical: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
