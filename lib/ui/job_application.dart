import 'package:flutter/material.dart';

class JobApplicationPage extends StatefulWidget {
  @override
  _JobApplicationPageState createState() => _JobApplicationPageState();
}

class _JobApplicationPageState extends State<JobApplicationPage>with AutomaticKeepAliveClientMixin<JobApplicationPage> {
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusNode node3 = FocusNode();
  FocusNode node4 = FocusNode();
  FocusNode node5 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 17,top: 16),
                child: Text("Giới thiệu bản thân",style: TextStyle(
                  color: Color(0xffA0A7B1)
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 17,right: 16,top: 10),
                decoration:
                BoxDecoration(
                    color: Color(0xFFFFFFFF),
                   //borderRadius:
                    //BorderRadius.all(const Radius.circular(4.0)),
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1A000000),
                          blurRadius: 15.0,
                          offset: Offset(0, 4)),
                    ]
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,
                    decoration: null,
                     maxLines: 4,
                      autofocus: true,
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                 // keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17,top: 16),
                child: Text("Học vấn",style: TextStyle(
                    color: Color(0xffA0A7B1)
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 17,right: 16,top: 10),
                decoration:
                BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    //borderRadius:
                    //BorderRadius.all(const Radius.circular(4.0)),
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1A000000),
                          blurRadius: 15.0,
                          offset: Offset(0, 4)),
                    ]
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  focusNode: node2,
                  decoration: null,
                  maxLines: 4,
                  //autofocus: true,
                  autocorrect: false,
                 keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17,top: 16),
                child: Text("Kinh nghiệm làm việc",style: TextStyle(
                    color: Color(0xffA0A7B1)
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 17,right: 16,top: 10),
                decoration:
                BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    //borderRadius:
                    //BorderRadius.all(const Radius.circular(4.0)),
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1A000000),
                          blurRadius: 15.0,
                          offset: Offset(0, 4)),
                    ]
                ),
                child: TextField(
                 //focusNode: node3,
                  decoration: null,
                  maxLines: 4,
                //  autofocus: true,
                  autocorrect: false,
                // keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17,top: 16),
                child: Text("Thành tích nổi bật",style: TextStyle(
                    color: Color(0xffA0A7B1)
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 17,right: 16,top: 10),
                decoration:
                BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    //borderRadius:
                    //BorderRadius.all(const Radius.circular(4.0)),
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1A000000),
                          blurRadius: 15.0,
                          offset: Offset(0, 4)),
                    ]
                ),
                child: TextField(
                  //focusNode: node4,
                  decoration: null,
                  maxLines: 4,
                //  autofocus: true,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17,top: 16),
                child: Text("Kỹ năng nổi bật",style: TextStyle(
                    color: Color(0xffA0A7B1)
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 17,right: 16,top: 10 ),
                decoration:
                BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    //borderRadius:
                    //BorderRadius.all(const Radius.circular(4.0)),
                    borderRadius: BorderRadius.all(Radius.zero),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff1A000000),
                          blurRadius: 15.0,
                          offset: Offset(0, 4)),
                    ]
                ),
                child: TextField(
                  //focusNode: node5,
                  decoration: null,
                  maxLines: 4,
                //  autofocus: true,
                  autocorrect: false,
                  //keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 104, right: 103),
                child: SizedBox(
                  width: 160,
                  height: 48,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    child: Text(
                      "Tạo hồ sơ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              SizedBox(height: 13,)
            ],
          ),
      )),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
