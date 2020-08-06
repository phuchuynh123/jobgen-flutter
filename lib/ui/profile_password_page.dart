import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constans.dart';

class ProfilePasswordPage extends StatefulWidget {
  @override
  _ProfilePasswordPageState createState() => _ProfilePasswordPageState();
}

class _ProfilePasswordPageState extends State<ProfilePasswordPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controller.text='123456789';
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: MediaQuery.of(context).padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 240),
                child: IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(top: 20, left: 17),
                child: Text(
                  "Cập nhập mật khẩu",
                  style: TextStyle(
                      color: Color(0xff273A44),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              )),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //: MainAxisAlignment,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 8,left: 17,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: SvgPicture.asset('assets/images/ic_we.svg'),
                    ),
                    Container(
                      child: Text("Giáp Nguyễn",style: TextStyle(color: Color(0xff273A44),fontSize: 19,fontWeight: FontWeight.bold),),
                    )
                  ],
                )),
            Center(
              //    padding: EdgeInsets.only(top: 20),
              child: Image.asset(R.image.ic_line),
            ),
            Container(
              padding: EdgeInsets.only(left: 17, top: 26),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 65),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 2, right: 6),
                          child: Text(
                            "Mật khẩu cũ",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 15),
                          ),
                        ),
                        Align(
                          child: Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                          alignment: Alignment.bottomRight,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(":"),
                        )
                      ],
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    width: 100,
                    child: TextField(
                      obscureText: true,
                      decoration: null,
                      controller: controller,
                      style: TextStyle(color: Color(0xff6E8089)),
                      autofocus: false,
                    ),
                  )
                ],
              ),
            ),
      Container(
        padding: EdgeInsets.only(left: 17, top: 26),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 65),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 2, right: 6),
                    child: Text(
                      "Mật khẩu mới",
                      style: TextStyle(
                          color: Color(0xff000000), fontSize: 15),
                    ),
                  ),
                  Align(
                    child: Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(":"),
                  )
                ],
                alignment: Alignment.topRight,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              width: 100,
              height: 18,
              child: TextField(
                obscureText: true,
                decoration: null,
                controller: controller,
                style: TextStyle(color: Color(0xff6E8089)),
                autofocus: false,
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 17, top: 26),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 65),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 2, right: 6),
                    child: Text(
                      "Nhập lại mật khẩu",
                      style: TextStyle(
                          color: Color(0xff000000), fontSize: 15),
                    ),
                  ),
                  Align(
                    child: Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(":"),
                  )
                ],
                alignment: Alignment.topRight,
              ),
            ),
            Container(
              padding: EdgeInsets.only(),
              width: 100,
              child: TextField(
                obscureText: true,
                decoration: null,
                controller: controller,
                style: TextStyle(color: Color(0xff6E8089)),
                autofocus: false,
              ),
            )
          ],
        ),
      ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 103, right: 104),
              child: SizedBox(
                width: 160,
                height: 48,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Cập nhập",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Color(0xff3277D8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
