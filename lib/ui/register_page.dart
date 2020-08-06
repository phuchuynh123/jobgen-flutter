import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          padding: MediaQuery.of(context).padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                child: Container(),
              ),

            ],
          ),
        ),
      ),
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 5, right: 200),
                  child: Text("Đăng ký  ",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF273A44),
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Image.asset("assets/images/login.png"),
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 160,
                                height: 45,
                                margin: EdgeInsets.only(left: 1),
                                child: SizedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        border: Border.all(
                                            width: 1.2, color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                            const Radius.circular(4.0)),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 8.0),
                                        ]),
                                    child: TextField(
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Họ*',
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFAFB7C2)),
                                        contentPadding: EdgeInsets.all(15),
                                        border: InputBorder.none,
                                      ),
                                      keyboardType: TextInputType.text,
                                      autocorrect: false,
                                      onSubmitted: (value) {
                                        FocusScope.of(context)
                                            .requestFocus(_focusName);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 160,
                                height: 45,
                                margin: EdgeInsets.only(left: 1),
                                child: SizedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        border: Border.all(
                                            width: 1.2, color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                            const Radius.circular(4.0)),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 8.0),
                                        ]),
                                    child: TextField(
                                      focusNode: _focusName,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Tên*',
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFAFB7C2)),
                                        contentPadding: EdgeInsets.all(15),
                                        border: InputBorder.none,
                                      ),
                                      keyboardType: TextInputType.text,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 1, right: 1),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                        width: 1.2, color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(4.0)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 8.0),
                                    ]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email*',
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFAFB7C2)),
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 1, right: 1),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                        width: 1.2, color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(4.0)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 8.0),
                                    ]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Mật khẩu*',
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFAFB7C2)),
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 1, right: 1),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                        width: 1.2, color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(4.0)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 8.0),
                                    ]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Nhập lại mật khẩu*',
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFAFB7C2)),
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 1),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                          width: 1.2, color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(4.0)),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0),
                                      ]),
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: Container(),
                                    value: selected,
                                    items: listDrop,
                                    hint: Text(
                                      'Giới tính',
                                      style: TextStyle(
                                          color: Color(0xFF7A828E),
                                          fontSize: 15.0),
                                    ),
                                    onChanged: (value) {
                                      selected = value;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 1, bottom: 1),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                          width: 1.2, color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(4.0)),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0),
                                      ]),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Số điện thoại*',
                                      hintStyle: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFFAFB7C2)),
                                      contentPadding: EdgeInsets.all(15),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    autocorrect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Checkbox(
                                  value: val,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val = value;
                                    });
                                  }),
                              Padding(
                                padding: EdgeInsets.only(left: 5, right: 2),
                                child: Text(
                                  'Đồng ý',
                                  style: TextStyle(
                                      color: Color(0xFF7A828E), fontSize: 15),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Điều khoản sử dụng',
                                  style: TextStyle(
                                      color: Color(0xFF628CD4), fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "Đăng ký",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              color: Color(0xff3277D8),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                            ),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
