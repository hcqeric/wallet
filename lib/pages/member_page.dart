import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberPage extends StatefulWidget {
  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _topHeader(),
            _userTitle(),
            _totalContent(),
            _actionList1(),
          ],
        ),
      ),
    );
  }

  Widget _topHeader() {
    return Container(
      height: ScreenUtil().setHeight(90),
      child: Center(
        child: Text(
          '个人中心',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }

  Widget _userTitle() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Image.asset('assets/icon_user.png'),
          Text(''),
          SizedBox(
            width: 16.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text(
              'VIP0',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _totalContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      height: ScreenUtil().setHeight(220),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/member_bg_total.png'),
              fit: BoxFit.fill)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '总收益 (元)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(12)),
                Text(
                  '48,000.00',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              ],
            ),
          ),
          _divideLine(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '可提现收益 (元)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(12)),
                Text(
                  '8,000.00',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionList1() {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
            child: ListTile(
              leading: Image.asset('assets/icon_money.png'),
              title: Text('收益记录'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
            child: ListTile(
              leading: Image.asset('assets/icon_bank_card.png'),
              title: Text('我的银行卡'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
            child: ListTile(
              leading: Image.asset('assets/icon_add_user.png'),
              title: Text('我的推荐'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
            child: ListTile(
              leading: Image.asset('assets/icon_feedback.png'),
              title: Text('问题反馈'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
            child: ListTile(
              leading: Image.asset('assets/icon_settings.png'),
              title: Text('系统设置'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _divideLine() {
    return Container(
      width: ScreenUtil().setWidth(2),
      margin: EdgeInsets.symmetric(vertical: 40.0),
      color: Colors.white,
    );
  }
}
