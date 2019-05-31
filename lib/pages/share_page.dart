import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wallet/res/colors.dart';

class SharePage extends StatefulWidget {
  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(750),
              child: Image.asset(
                'assets/share_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              child: Column(
                children: <Widget>[
                  SizedBox(height: ScreenUtil().setHeight(530)),
                  Container(
                    width: ScreenUtil().setWidth(750),
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: share_bg,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            left: ScreenUtil().setWidth(100),
                            top: 24.0,
                            right: ScreenUtil().setWidth(100),
                            bottom: 16.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '当前等级:VIP0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                '便捷到账汇率:0.56%+3.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(30),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '邀请',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(
                                    ' 2 ',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Text(
                                    '位好友，升级成为:VIP1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '便捷到账费率:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(
                                    ' 0.5%+3.00',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(24.0, 8.0, 20.0, 24.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: app_main, width: 1),
                              // color: share_bg,
                              borderRadius: BorderRadius.circular(32.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/icon_tooltip.png'),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                  child: Text(
                                '当前已成功邀请人数 0人',
                                style: TextStyle(
                                  color: app_main,
                                ),
                              )),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text(
                                    '查看详情 >>',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(32)),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: ScreenUtil().setWidth(500),
                      height: ScreenUtil().setHeight(70),
                      alignment: Alignment.center,
                      child: Text(
                        '立即邀请',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      ),
                    ),
                    color: app_main,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
