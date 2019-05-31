import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../res/colors.dart';

class PropagatePage extends StatefulWidget {
  @override
  _PropagatePageState createState() => _PropagatePageState();
}

class _PropagatePageState extends State<PropagatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[_headerWidget(), _explanationText()],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(480),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: ScreenUtil().setHeight(430),
            width: ScreenUtil().setWidth(750),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/cheng_bg_1.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: ScreenUtil().setHeight(90),
                      child: Center(
                        child: Text(
                          '我的主城',
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16.0,
                      child: Container(
                        height: ScreenUtil().setHeight(90),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              '收益记录',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(24.0)),
                Image.asset('assets/icon_cheng_hui.png'),
                SizedBox(height: ScreenUtil().setHeight(24.0)),
                Text(
                  '你还不是城主，暂不能享受城主特权',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: ScreenUtil().setWidth(436),
              height: ScreenUtil().setHeight(100),
              child: FlatButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                child: Text(
                  '我要成为城主',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
                color: app_main,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),

                // width: ScreenUtil().setWidth(500),

                // child: InkWell(
                //   onTap: () {},
                //   child: Container(
                //     width: ScreenUtil().setWidth(436),
                //     height: ScreenUtil().setHeight(100),
                //     decoration: BoxDecoration(
                //       color: app_main,
                //       borderRadius: BorderRadius.circular(100),
                //     ),
                //     child: Center(
                //       child: Text(
                //         '我要成为城主',
                //         style: TextStyle(color: Colors.white, fontSize: 22.0),
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _explanationText() {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
      padding: EdgeInsets.all(ScreenUtil().setWidth(52)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              _divideLine(),
              Expanded(
                child: Center(
                  child: Text(
                    '城主特权',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              _divideLine(),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(32)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _dot(),
              Expanded(
                child: Text('即时享有主城内用户交易流水金额0.01%收益',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(24)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _dot(),
              Expanded(
                child: Text('即时享有主城内用户交易手续费冗余差价的收益',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(24)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _dot(),
              Expanded(
                child: Text('即时享有主城内用户办理增值业务50%利润的收益',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(24)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _dot(),
              Expanded(
                child: Text('主城被下一个城主购买后，获得该主城价格的涨幅金额收益',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _divideLine() {
    return Container(
      color: divide_line,
      width: ScreenUtil().setWidth(224),
      height: ScreenUtil().setHeight(1),
    );
  }

  Widget _dot() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          color: app_main,
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}
