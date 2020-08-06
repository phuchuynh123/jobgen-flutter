import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_jobgen/ui/post_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_jobgen/ui/find_candidate_page.dart';
class SearchCandidatePage extends StatefulWidget {
  @override
  _SearchCandidatePageState createState() => _SearchCandidatePageState();
}

class _SearchCandidatePageState extends State<SearchCandidatePage> with AutomaticKeepAliveClientMixin<SearchCandidatePage> {
  List<DropdownMenuItem<String>> listDrop1 = [];
  List<DropdownMenuItem<String>> listDrop2 = [];
  List<DropdownMenuItem<String>> listDrop3 = [];
  List<DropdownMenuItem<String>> listDrop4 = [];
  String selected,selected1,selected2,selected3,selected4 = null;
  bool val = false;
  FocusNode _focusName = FocusNode();
  int currentTab = 0;

  // luu tru cac tab view
  //Active Page(Tab)
  void loadData() {
    listDrop1 = [];
    listDrop2 = [];
    listDrop3 = [];
    listDrop4 = [];

    listDrop1.add(DropdownMenuItem(
      child: Text(
        'IT phần mềm',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop1.add(DropdownMenuItem(
      child: Text('Kinh doanh',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Text(
        'Đà Nẵng',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Text('Tp Hồ chí minh',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text(
        'Công nhân',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text('Kĩ sư',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
    listDrop4.add(DropdownMenuItem(
      child: Text(
        'Lương thỏa thuận',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop4.add(DropdownMenuItem(
      child: Text('10 đến 15 triệu',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 1, right: 1),
                            padding: EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius:
                                BorderRadius.all(const Radius.circular(4.0)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8.0,
                                      offset: Offset(2, 2)),
                                ]),
                            child: DropdownButton(
                              isExpanded: true,
                              iconSize: 40,
                              style: TextStyle(color: Color(0xffC1C1C1)),
                              underline: Container(),
                              value: selected1,
                              items: listDrop1,
                              hint: Text(
                                'Ngành nghề',
                                style: TextStyle(
                                    color: Color(0xFF7A828E), fontSize: 15.0),
                              ),
                              onChanged: (value) {
                                selected1 = value;
                                setState(() {});
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 22),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 1, right: 1),
                                    padding: EdgeInsets.only(left: 16),
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
                                    child: DropdownButton(
                                      isExpanded: true,
                                      iconSize: 40,
                                      style: TextStyle(color: Color(0xffC1C1C1)),
                                      underline: Container(),
                                      value: selected2,
                                      items: listDrop2,
                                      hint: Text(
                                        'Nơi làm việc',
                                        style: TextStyle(
                                            color: Color(0xFF7A828E),
                                            fontSize: 14.0),
                                      ),
                                      onChanged: (value) {
                                        selected2 = value;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 1, right: 1),
                                    padding: EdgeInsets.only(left: 16),
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
                                    child: DropdownButton(
                                      isExpanded: true,
                                      iconSize: 40,
                                      style: TextStyle(color: Color(0xffC1C1C1)),
                                      underline: Container(),
                                      value: selected3,
                                      items: listDrop3,
                                      hint: Text(
                                        'Công việc',
                                        style: TextStyle(
                                            color: Color(0xFF7A828E),
                                            fontSize: 14.0),
                                      ),
                                      onChanged: (value) {
                                        selected3 = value;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 1, right: 1),
                                    padding: EdgeInsets.only(left: 16),
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
                                    child: DropdownButton(
                                      isExpanded: true,
                                      iconSize: 40,
                                      style: TextStyle(color: Color(0xffC1C1C1)),
                                      underline: Container(),
                                      value: selected4,
                                      items: listDrop4,
                                      hint: Text(
                                        'Mức lương',
                                        style: TextStyle(
                                            color: Color(0xFF7A828E),
                                            fontSize: 14.0),
                                      ),
                                      onChanged: (value) {
                                        selected4 = value;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>FindCandidatePage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 11),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Tìm kiếm ứng viên",
                          style: TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

      //bottomNavigationBar

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
