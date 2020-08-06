import 'package:flutter/material.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_svg/svg.dart';
import '../Constans.dart';
import 'package:flutter_jobgen/ui/notification_page.dart';
import 'package:flutter_jobgen/ui/detail_candidate_page.dart';
class FindCandidatePage extends StatefulWidget {
  @override
  _FindCandidatePageState createState() => _FindCandidatePageState();
}

class _FindCandidatePageState extends State<FindCandidatePage> {
  final List<CandidateModel> candidates = [
    CandidateModel(
        image: R.image.ic_girl,
        title: "Nguyễn Thị Ngân Quỳnh",
        job: "Nhân viên hành chính - Nhân sự ",
        salary: "Lương thỏa thuận",
        address: "TP Hồ Chí Minh , TP Đà Nẵng"),
    CandidateModel(
        image: R.image.ic_boy,
        title: "Hoàng Huy",
        job: " Lập trình viên ",
        salary: "10.000.000 - 15.000.000 VND",
        address: "TP Đà Nẵng "),
  ];

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 17, top: 8, bottom: 29),
                child: Text(
                  "Kết quả tìm kiếm ứng viên",
                  style: TextStyle(
                      color: Color(0xff273A44),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: _getScreen,
                  itemCount: candidates.length,
                  padding: EdgeInsets.only(left: 5, right: 5),
                ),
              )
            ],
          ),
        ));
  }

  Widget _getScreen(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Color(0x1A000000),
                    offset: Offset(0, 4),
                    blurRadius: 8)
              ]),
          child: Column(
            children: <Widget>[
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRect(
                    child: Image.asset(
                      candidates[index].image,
                      width: 90,
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            candidates[index].title,
                            style: TextStyle(
                                color: Color(0xff273A44),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8,bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Image.asset(R.image.ic_por,),
                              ),
                              Text(candidates[index].job,style: TextStyle(color: Color(0xff7A828E),fontSize: 10),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8,bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Image.asset(R.image.ic_dola,),
                              ),
                              Text(candidates[index].salary,style: TextStyle(color: Color(0xff7A828E),fontSize: 10),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8,bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Image.asset(R.image.ic_map,),
                              ),
                              Text(candidates[index].address,style: TextStyle(color: Color(0xff7A828E),fontSize: 10),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailCandidatePage(candidate :candidates[index]),
              ));
        },
      ),
    );
  }
}

class CandidateModel {
  final String image;
  final String title;
  final String job;
  final String salary;
  final String address;

  CandidateModel({this.image, this.title, this.job, this.salary, this.address});
}
