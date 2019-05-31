import 'package:flutter/material.dart';
import '../res/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _titleBar(),
            _topBanner(),
            _funcationModules(),
            _shortcutModules(),
          ],
        ),
      ),
    );
  }

  Widget _titleBar() {
    return Container(
      height: ScreenUtil().setHeight(90),
      child: Center(
        child: Text(
          '雏蜂生活',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }

  Widget _topBanner() {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(12)),
      height: ScreenUtil().setHeight(384),
      width: ScreenUtil().setWidth(750),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: ScreenUtil().setHeight(320),
            width: ScreenUtil().setWidth(700),
            decoration: BoxDecoration(
                color: app_main, borderRadius: BorderRadius.circular(16.0)),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: ScreenUtil().setHeight(128),
              width: ScreenUtil().setWidth(550),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '888元',
                          style: TextStyle(
                            color: app_main,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('今日收款金额')
                      ],
                    ),
                  ),
                  _divideLine(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '12笔',
                          style: TextStyle(
                            color: app_main,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('今日收款笔数'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _funcationModules() {
    return Container(
      margin: EdgeInsets.fromLTRB(
          20.0, ScreenUtil().setHeight(30), 20.0, ScreenUtil().setHeight(30)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: Container(
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/module_bg_yellow.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/icon_mer_money.png'),
                        SizedBox(height: 12.0),
                        Text(
                          '商户收款',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              SizedBox(width: ScreenUtil().setWidth(30)),
              Expanded(
                child: InkWell(
                  child: Container(
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/module_bg_red.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/icon_mer_join.png'),
                        SizedBox(height: 12.0),
                        Text(
                          '商户入驻',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              )
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(24)),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: Container(
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/module_bg_green.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/icon_qr_code.png'),
                        SizedBox(height: 12.0),
                        Text(
                          '扫一扫',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              SizedBox(width: ScreenUtil().setWidth(30)),
              Expanded(
                child: InkWell(
                  child: Container(
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/module_bg_blue.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/icon_query_bill.png'),
                        SizedBox(height: 12.0),
                        Text(
                          '账单查询',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _shortcutModules() {
    return Container(
      height: ScreenUtil().setHeight(156),
      width: ScreenUtil().setWidth(700),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/icon_loan.png'),
                SizedBox(
                  height: 5.0,
                ),
                Text('急速贷款'),
              ],
            ),
          ),
          _divideLine(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/icon_card.png'),
                SizedBox(
                  height: 5.0,
                ),
                Text('申请信用卡'),
              ],
            ),
          ),
          _divideLine(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/icon_inte.png'),
                SizedBox(
                  height: 5.0,
                ),
                Text('积分兑换'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divideLine() {
    return Container(
      width: ScreenUtil().setWidth(1),
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
      color: divide_line,
    );
  }
}
