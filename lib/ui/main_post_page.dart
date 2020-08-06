import 'package:flutter/material.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_svg/svg.dart';
import '../Constans.dart';
import 'notification_page.dart';
import 'package:flutter_jobgen/ui/job_application.dart';
import 'package:flutter_jobgen/ui/post_job_page.dart';
class MainPostPage extends StatefulWidget {
  @override
  _MainPostPageState createState() => _MainPostPageState();
}

class _MainPostPageState extends State<MainPostPage> {
  PageController _pageController;
  int page = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
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
              IconButton(
                  icon: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          R.image.ic_notity,
                        ),
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                  }
              ),
              IconButton(
                  icon: SvgPicture.asset(R.image.ic_people),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  }
              ),

            ],
          ),
        ),
      ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 17),
                  child: Text("Đăng tuyển/Tạo hồ sơ",
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Color(0xFF273A44),
                          fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.only(left: 17, right: 16,top: 27,bottom: 5),
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 2),
                        child: RaisedButton(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          onPressed: page == 0
                              ? null
                              : () {
                            _pageController.animateToPage(0,
                                duration: Duration(microseconds: 300),
                                curve: Curves.linear);
                            setState(() {
                              page = 0;
                            });
                          },
                          child: Text(
                            "Đăng bài tuyển dụng",
                            style: TextStyle(
                                color: this.page == 0
                                    ? Colors.white
                                    : Color(0xff4E565A),
                                fontSize: 15),
                          ),
                          color: page == 0 ? Color(0xff628CD4) : Color(0xFFFFFFFF),
                          disabledColor: page == 0 ? Color(0xff628CD4) : Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 1),
                        child: RaisedButton(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          onPressed: page == 1
                              ? null
                              : () {
                            _pageController.animateToPage(1,
                                duration: Duration(microseconds: 300),
                                curve: Curves.linear);

                            setState(() {
                              page = 1;
                            });
                          },
                          child: Text(
                            "Hồ sơ tìm việc",
                            style: TextStyle(
                                color: page == 1 ? Colors.white : Color(0xff4E565A),
                                fontSize: 15),
                          ),
                          color: page == 1 ? Color(0xff628CD4) : Color(0xFFFFFFFF),
                          disabledColor: page == 1 ? Color(0xff628CD4) : Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[PostJobPage(), JobApplicationPage()],
                ),
              )
            ],
          ),
        )
    );
  }
}
