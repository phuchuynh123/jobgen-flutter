import 'package:flutter/material.dart';
import 'package:flutter_jobgen/ui/profile_page.dart';
import 'package:flutter_svg/svg.dart';

import '../Constans.dart';
class NotificationEmptyPage extends StatefulWidget {
  @override
  _NotificationEmptyPageState createState() => _NotificationEmptyPageState();
}

class _NotificationEmptyPageState extends State<NotificationEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  PreferredSize(
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
                   icon: Image.asset(R.image.ic_bell),
                   ),
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
              child:Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child:Center(
                      child: Image.asset(R.image.ic_alarm),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 43),
                    child:Center(
                      child: Text(" You has no notification!",style: TextStyle(color: Color(0xff6E8089),fontSize: 16),),
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
