import 'package:flutter/material.dart';
import 'package:flutter_jobgen/Constans.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_jobgen/ui/profile_password_page.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<DropdownMenuItem<String>> listDrop = [];
  String selected = null;
  bool val = false;
  FocusNode _focusName = FocusNode();

  void loadData() {
    listDrop = [];
    listDrop.add(DropdownMenuItem(
      child: Container(
        child: Text(
          'Nam',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop.add(DropdownMenuItem(
      child: Container(
        child: Text('Nữ',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
  }

  String _date = "1/1/2004";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    controller.text = "41 Lê Duẩn";
    controller1.text = "Nguyễn";
    controller2.text =  "Giáp";
    controller3.text =  "0123456789";
    loadData();
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
                  "Tài khoản cá nhân",
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
              padding: EdgeInsets.only(top: 8),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: SvgPicture.asset('assets/images/ic_gro.svg'),
                          left: 15,bottom: 10,

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30,top: 10),
                          child: IconButton(
                            icon: Image.asset(R.image.ic_picture),
                            onPressed: null,
                          ),
                        )
                      ],
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Giáp Nguyễn",
                            style: TextStyle(
                                color: Color(0xff273A44),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            "Cập nhập mật khẩu",
                            style:
                            TextStyle(color: Color(0xff6E8089), fontSize: 15),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePasswordPage()));
                          },
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Center(
              //    padding: EdgeInsets.only(top: 20),
              child: Image.asset(R.image.ic_line),
            ),
            Container(
              padding: EdgeInsets.only(left: 17, top: 26),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 45),
                    child: Text(
                      "Email:",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    "ngocgiap23@gmail.com",
                    style: TextStyle(color: Color(0xff6E8089), fontSize: 15),
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
                            "Họ",
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
                    width: 150,
                    child: TextField(
                      decoration: null,
                      controller: controller1,
                      style: TextStyle(color: Color(0xff6E8089)),
                      autofocus: false,
                      //autocorrect: false,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 26),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 60),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 2, right: 6),
                          child: Text(
                            "Tên",
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
                    width: 150,
                    child: TextField(
                      decoration: null,
                      controller: controller2,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 45),
                    child: Text(
                      "Địa chỉ:",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: TextField(
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
                    padding: EdgeInsets.only(top: 0, right: 22),
                    child: Text(
                      "Điện thoại:",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: TextField(
                      decoration: null,
                      controller: controller3,
                      style: TextStyle(color: Color(0xff6E8089)),
                      autofocus: false,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 17, top: 20),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 22),
                    child: Text(
                      "Ngày sinh:",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(containerHeight: 210.0),
                          showTitleActions: true,
                          minTime: DateTime(1990, 1, 1),
                          maxTime: DateTime(2019, 12, 31), onConfirm: (date) {
                        print('confirm $date');
                        _date = '${date.day}/${date.month}/${date.year}';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      " $_date",
                                      style: TextStyle(
                                          color: Color(0xff6E8089),
                                          fontSize: 15.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Image.asset(R.image.ic_union),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 17, top: 15),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 35),
                    child: Text(
                      "Giới tính:",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        // fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //margin: EdgeInsets.only(top: 10, left: 1, right: 1),
                      padding: EdgeInsets.only(left: 10),
                      child: DropdownButton(
                        isExpanded: false,
                        // iconSize: 50,
                        icon: Image.asset(
                          R.image.ic_union,
                        ),
                        style: TextStyle(color: Color(0xffC1C1C1)),
                        underline: Container(),
                        value: "two",
                        items: listDrop,
                        onChanged: (value) {
                          selected = value;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
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

class ProfileModel {
  final String email;
  final String ho;
  final String ten;
  final String address;
  final int phone;
  final String date;
  final String gender;

  ProfileModel({
    this.email,
    this.ho,
    this.ten,
    this.address,
    this.phone,
    this.date,
    this.gender,
  });
}
