import 'package:flutter/material.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_jobgen/ui/notification_empty_page.dart';
import '../Constans.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<NotificationModel> notifis = [
    NotificationModel(
        image: R.image.ic_group,
        title: "Tạo hồ sơ thành công",
        description: "Xin chúc mừng!Bạn vừa tạo hồ sơ công việc thành công."),
    NotificationModel(
        image: R.image.ic_group,
        title: "Tin tuyển dụng mới ",
        description: "Thông báo! Bạn vừa nhận được một lời mời công việc mới."),
    NotificationModel(
        image: R.image.ic_group,
        title: "Đăng bài thành công ",
        description: "Xin chúc mừng! Bạn vừa đăng bài tuyển dụng thành công."),
  ];

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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationEmptyPage()));
                  }),
              IconButton(
                  icon: SvgPicture.asset(R.image.ic_people),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
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
                "Thông báo",
                style: TextStyle(
                    color: Color(0xff273A44),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: _getUI,
                itemCount: notifis.length,
                padding: EdgeInsets.only(left: 5, right: 5),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getUI(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(color: Color(0xffFFFFFF), offset: Offset(0, 4), blurRadius: 8)
              ]),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              padding: EdgeInsets.only(left: 13,right: 12),
              child: Image.asset(
                notifis[index].image,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 7,bottom: 2),
              child: Text(
                notifis[index].title,
                style: TextStyle(color: Color(0xff273A44), fontSize: 15,fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(right: 10,bottom: 8),
              child: Text(notifis[index].description,style: TextStyle(fontSize: 14,color: Color(0xff7A828E)),),
            ),
            onTap: () {
              //_showSnackBar(context, posts[index]);
            },
          ),
        ),
      ),
    );
  }
}

class NotificationModel {
  final String image;
  final String title;
  final String description;

  NotificationModel({this.image, this.title, this.description});
}
