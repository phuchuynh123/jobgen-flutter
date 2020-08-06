import 'package:flutter/material.dart';
import 'package:flutter_jobgen/model/post_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_jobgen/Constans.dart';
import 'package:flutter_jobgen/ui/post_page.dart';
//import 'package:flutter_jobgen/ui/find_job_page.dart';
//import 'package:flutter_jobgen/ui/find_job_page.dart';
class PostDetailPage extends StatefulWidget {
  final PostModel post;
  PostDetailPage({Key key, this.post}) : super(key: key);

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
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
                Expanded(child: Container()),
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
                ),
                IconButton(
                    icon: SvgPicture.asset(R.image.ic_people), onPressed: null)
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        widget.post.image,
                        width: 80,
                        height: 86,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              widget.post.comapny,
                              style: TextStyle(
                                  color: Color(0xff7A828E), fontSize: 13.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3, bottom: 3),
                            child: Row(
                              children: <Widget>[
                                Image.asset(R.image.ic_dola),
                                Text(
                                  widget.post.salary,
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(R.image.ic_map),
                                Text(
                                  widget.post.address,
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text(widget.post.title,
                          style: TextStyle(
                              color: Color(0xff273A44), fontSize: 17)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'Thông tin nhà tuyển dụng',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 11),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            //child: Text('Tên doanh nghiệp: ${widget.post.comapny}',style: TextStyle(color: Color(0xff000000),fontSize: 11),),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Tên doanh nghiệp: ',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11)),
                              TextSpan(
                                  text: widget.post.comapny,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11))
                            ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Quy mô: ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11)),
                                  TextSpan(
                                      text: "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11))
                                ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Website: ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11)),
                                  TextSpan(
                                      text: "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11))
                                ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Email: ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11)),
                                  TextSpan(
                                      text: "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11))
                                ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Điện thoại: ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11)),
                                  TextSpan(
                                      text: "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11))
                                ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Địa chỉ: ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11)),
                                  TextSpan(
                                      text: widget.post.address,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11))
                                ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: SvgPicture.asset('assets/images/writing.svg'),
        backgroundColor: Color(0xff628CD4),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF6E8089),
            ),
            title: Text(
              'Tìm Kiếm',
              style: TextStyle(
                  fontSize: 13,
                  color:
                  this.page == 0 ? Color(0xFF628CD4) : Color(0xFF6E8089)),
            ),
            activeIcon: Icon(
              Icons.search,
              color: Color(0xFF628CD4),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/news.png',
              color: Color(0xFF6E8089),
            ),
            title: Text(
              'Bài Viết',
              style: TextStyle(
                  fontSize: 13,
                  color:
                  this.page == 1 ? Color(0xFF628CD4) : Color(0xFF6E8089)),
            ),
            activeIcon: Image.asset(
              'assets/images/news.png',
              color: Color(0xFF628CD4),
            ),
          ),
        ],
        onTap: (page) {
          _pageController.animateToPage(page,
              duration: Duration(microseconds: 300), curve: Curves.linear);
          setState(() {
            this.page = page;
          });
        },
      ),
    );
  }
}
