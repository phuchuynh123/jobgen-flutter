import 'package:flutter/material.dart';
import 'package:flutter_jobgen/Constans.dart';
import 'package:flutter_jobgen/model/post_model.dart';
import 'package:flutter_jobgen/ui/post_detail_page.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage>
    with AutomaticKeepAliveClientMixin<PostPage> {
  final List<PostModel> posts = [
    PostModel(
        image: R.image.ic_flower,
        title: "Tuyển Dụng Học Viên Đã Tốt Nghiệp Phi Công Cơ Bản",
        comapny: "Chi nhánh Tổng công ty Hàng không Việt Nam - CTCP PHUC HUYNH",
        salary: "Lương thỏa thuận",
        address: "117 Hồng hà,Phường 2"),
    PostModel(
        image: R.image.ic_eden,
        title: "Tuyển nhân viên Vận hành máy tính",
        comapny: "Công ty CP QN-EDEN - Khách sạn EDEN PLAZA DA ...",
        salary: "Lương thỏa thuận",
        address: "05-07 Duy Tân, Đà Nẵng"),
    PostModel(
        image: R.image.ic_uec,
        title: " Giảng viên/trợ giảng",
        comapny: "Trung tâm Anh Ngữ Liên Hiệp UEC Việt Nam - CN Đà...",
        salary: "10 triệu đến 15 triệu",
        address: "05-07 Duy Tân, Đà Nẵng"),
    PostModel(
        image: R.image.ic_chamstone,
        title: " Nhân viên bán hàng tại Bà Nà Hill",
        comapny: "Công ty TNHH Đá Chàm",
        salary: "Lương thỏa thuận",
        address: " 63 Đường 2/9"),
    // PostModel(image: R.image.ic_notity, title: "sfsdfsdfs", comapny: "XXXX"),
    // PostModel(image: R.image.ic_notity, title: "sfsdfsdfs", comapny: "XXXX"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 17, top: 8, bottom: 29),
                child: Text(
                  "Việc làm tốt nhất",
                  style: TextStyle(
                      color: Color(0xff273A44),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: _getItemUI,
                  itemCount: posts.length,
                  padding: EdgeInsets.only(left: 5, right: 5),
                ),
              )
            ],
          ),
        ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  Widget _getItemUI(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16, left: 15, right: 15),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(color: Color(0x1A000000), offset: Offset(0, 4), blurRadius: 8)
              ]),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                      child: Image.asset(
                        posts[index].image,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4))),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            posts[index].comapny,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(0xff7A828E), fontSize: 10.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            posts[index].title,
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xFF273A44), fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(R.image.ic_dola),
                                    SizedBox(width: 3),
                                    Text(
                                      posts[index].salary,
                                      style: TextStyle(
                                          color: Color(0xff7A828E),
                                          fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(R.image.ic_map),
                                    SizedBox(width: 3),
                                    Text(
                                      posts[index].address,
                                      style: TextStyle(
                                          color: Color(0xff7A828E),
                                          fontSize: 10.0),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostDetailPage(post: posts[index]),
              ));
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context, PostModel post) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${post.title} is a city in ${post.comapny}"),
      backgroundColor: Colors.amber,
    );
    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}
