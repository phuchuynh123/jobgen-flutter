import 'package:flutter/material.dart';
import 'search_candidate_page.dart';
import 'search_job_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  PageController _pageController;
  int page = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 8),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Text("Mạng xã hội việc làm ",
                  style: TextStyle(
                      fontSize: 26.0,
                      color: Color(0xFF273A44),
                      fontWeight: FontWeight.bold))),
          Center(
            child: Image.asset("assets/images/image1.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20,bottom: 2),
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
                        "Bạn muốn tìm việc?",
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
                  width: 5,
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
                        "Bạn muốn tuyển dụng?",
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
              children: <Widget>[SearchJobPage(), SearchCandidatePage()],
            ),
          )
        ],
      ),
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
