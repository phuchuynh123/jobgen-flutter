import 'package:flutter/material.dart';
import 'package:flutter_jobgen/ui/find_candidate_page.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_svg/svg.dart';

import '../Constans.dart';
import 'notification_page.dart';

class DetailCandidatePage extends StatefulWidget {
  final CandidateModel candidate;

  const DetailCandidatePage({Key key, this.candidate}) : super(key: key);

  @override
  _DetailCandidatePageState createState() => _DetailCandidatePageState();
}

class _DetailCandidatePageState extends State<DetailCandidatePage> {
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()));
                    }),
                IconButton(
                    icon: SvgPicture.asset(R.image.ic_people),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    }),
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
                    leading: Image.asset(widget.candidate.image),
                    title: Padding(
                      padding: EdgeInsets.only(),
                      child: Text(
                        widget.candidate.title,
                        style:
                            TextStyle(color: Color(0xff273A44), fontSize: 17),
                      ),
                    ),
                    subtitle: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    R.image.ic_por,
                                  ),
                                ),
                                Text(
                                  widget.candidate.job,
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    R.image.ic_dola,
                                  ),
                                ),
                                Text(
                                  widget.candidate.salary,
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    R.image.ic_map,
                                  ),
                                ),
                                Text(
                                  widget.candidate.address,
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 7, right: 5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "*Kỹ năng:",
                            style: TextStyle(
                                color: Color(0xff273A44),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Dịch vụ",
                              style: TextStyle(
                                  color: Color(0xff7A828E), fontSize: 13),
                            ),
                            color: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                          ),
                        )),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Nhân sự",
                              style: TextStyle(
                                  color: Color(0xff7A828E), fontSize: 13),
                            ),
                            color: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                          ),
                        )),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Tổ chức sự kiện",
                                  style: TextStyle(
                                      color: Color(0xff7A828E), fontSize: 13),
                                ),
                              ],
                            ),
                            color: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            "*Giới thiệu bản thân",
                            style: TextStyle(
                                color: Color(0xff273A44),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5,right:63),
                          child: Text(
                            "Cử nhân quản trị du lịch Đà Nẵng cử nhân khoa quản trị kinh doanh Học viện Bưu chính viễn thông TP.HCM",
                            style: TextStyle(color: Color(0xff7A828E),fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ))
            ],
          ),
        ));
  }
}
