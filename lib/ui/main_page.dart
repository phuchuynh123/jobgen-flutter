import 'package:flutter/material.dart';
import 'package:flutter_jobgen/Constans.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search_page.dart';
import 'post_page.dart';
import 'search_job_page.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_jobgen/ui/notification_page.dart';
import 'package:flutter_jobgen/ui/main_post_page.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    return _MainPageState();
  }
}
class _MainPageState extends State<MainPage> {
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
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          SearchPage(),
          PostPage()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPostPage()));
        },
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
