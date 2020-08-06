import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_jobgen/ui/register_page.dart';
import 'package:flutter_svg/svg.dart';
import '../Constans.dart';
class  LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        //constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10,right: 160),
                child: Text("Đăng nhập ",style: TextStyle(fontSize:30.0,color: Color(0xFF273A44),fontWeight: FontWeight.bold))),
              Padding(
                padding:EdgeInsets.only(top: 5.0),
                child: Image.asset("assets/images/login.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        width: 160,
                        height: 45,
                        child: RaisedButton(
                          onPressed:(){},
                          child: Text(
                            "Login Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          color: Color(0xff3277D8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: SizedBox(
                        width: 160,
                        height: 45,
                        child: RaisedButton(
                          onPressed:(){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Login",
                                style: TextStyle(color: Color(0xFFA3ABB6), fontSize: 14),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5),
                              child :Image.asset("assets/images/image.png"),
                              ),
                            ],
                          ),
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 1,right: 1),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(width: 1.2,color: Colors.white),
                        borderRadius: BorderRadius.all(const Radius.circular(4.0)),
                        boxShadow: const[
                          BoxShadow(color:Colors.black12,blurRadius: 8.0),
                        ]

                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email*',
                          hintStyle: TextStyle(fontSize: 15,color: Color(0xFFAFB7C2)),
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
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 1,right: 1),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(width: 1.2,color: Colors.white),
                          borderRadius: BorderRadius.all(const Radius.circular(4.0)),
                          boxShadow: const[
                            BoxShadow(color:Colors.black12,blurRadius: 8.0),
                          ]

                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Mật khẩu*',
                          hintStyle: TextStyle(fontSize: 15,color: Color(0xFFAFB7C2)),
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
              Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child :Text("Quên mật khẩu?",style: TextStyle(color: Color(0xFF628CD4),fontSize: 15),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text(
                      "Đăng nhập",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: RichText(
                  text: TextSpan(
                      text: "Bạn chưa có tài khoản?",
                      style: TextStyle(color: Color(0xff7A828E), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, "/register");
                              },
                            text: "Đăng kí ngay",
                            style: TextStyle(
                                color: Color(0xff273A44), fontSize: 16,fontWeight: FontWeight.bold))
                      ]),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}