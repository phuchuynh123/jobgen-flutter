import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

class PostJobPage extends StatefulWidget {
  @override
  _PostJobPageState createState() => _PostJobPageState();
}

class _PostJobPageState extends State<PostJobPage>
    with AutomaticKeepAliveClientMixin<PostJobPage> {
  List<DropdownMenuItem<String>> listDrop = [];
  List<DropdownMenuItem<String>> listDrop2 = [];
  List<DropdownMenuItem<String>> listDrop1 = [];
  List<DropdownMenuItem<String>> listDrop3 = [];
  List<DropdownMenuItem<String>> listDrop4 = [];
  List<DropdownMenuItem<String>> listDrop5 = [];
  List<DropdownMenuItem<String>> listDrop6 = [];
  String selected,
      selected1,
      selected2,
      selected3,
      selected4,
      selected5,
      selected6 = null;
  bool val = false;
  FocusNode _focusName = FocusNode();
  File imageFile;

  void loadData() {
    listDrop = [];
    listDrop1 = [];
    listDrop2 = [];
    listDrop3 = [];
    listDrop4 = [];
    listDrop5 = [];
    listDrop6 = [];

    listDrop.add(DropdownMenuItem(
      child: Container(
        child: Text(
          'Đại học',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop.add(DropdownMenuItem(
      child: Container(
        child: Text('Cao đẳng',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Container(
        child: Text(
          '1 Năm',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop2.add(DropdownMenuItem(
      child: Container(
        child: Text('2 Năm',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
    listDrop1.add(DropdownMenuItem(
      child: Text(
        'Mới tốt nghiệp',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop1.add(DropdownMenuItem(
      child: Text('Thực tập sinh',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text(
        'TP Hồ Chí Minh',
        style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
      ),
      value: 'one',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text('Đà Nẵng',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'two',
    ));
    listDrop3.add(DropdownMenuItem(
      child: Text('Hải Dương',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
      value: 'three',
    ));
    listDrop4.add(DropdownMenuItem(
      child: Container(
        child: Text(
          'Sơ cấp',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop4.add(DropdownMenuItem(
      child: Container(
        child: Text('Thứ cấp',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
    listDrop5.add(DropdownMenuItem(
      child: Container(
        child: Text(
          '2019',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop5.add(DropdownMenuItem(
      child: Container(
        child: Text('2020',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
    listDrop6.add(DropdownMenuItem(
      child: Container(
        child: Text(
          '100USD',
          style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0),
        ),
      ),
      value: 'one',
    ));
    listDrop6.add(DropdownMenuItem(
      child: Container(
        child: Text('200USD',
            style: TextStyle(color: Color(0xFF7A828E), fontSize: 15.0)),
        //width: double.infinity,
      ),
      value: 'two',
    ));
  }

  pickImageFromGallery(ImageSource source) {
    ImagePicker.pickImage(source: source).then((file) {
      setState(() {
        imageFile = file;
      });
    });
  }

  /*Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 17, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "Ảnh",
                                style: TextStyle(
                                    color: Color(0xffA0A7B1), fontSize: 13),
                              ),
                            ),
                            InkWell(
                              child: Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: imageFile == null
                                    ? SvgPicture.asset(
                                        'assets/images/ic_maskgroup.svg')
                                    : Image.file(
                                        imageFile,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              onTap: () {
                                pickImageFromGallery(ImageSource.gallery);
                              },
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 16),
                                child: Row(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 2, right: 4),
                                          child: Text(
                                            "Tên hồ sơ",
                                            style: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 15),
                                          ),
                                        ),
                                        Align(
                                          child: Text(
                                            "*",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1.2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 8.0),
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFAFB7C2)),
                                  contentPadding: EdgeInsets.all(15),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                                value: val,
                                onChanged: (bool value) {
                                  setState(() {
                                    val = value;
                                  });
                                }),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Text(
                                'Chọn làm hồ sơ mặc định để tìm kiếm công việc',
                                style: TextStyle(
                                    color: Color(0xFF000000), fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Text(
                                "Bằng cấp cao nhất",
                                style: TextStyle(
                                    color: Color(0xffA0A7B1), fontSize: 15),
                              ),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(
                                "Năm kinh nghiệm",
                                style: TextStyle(
                                    color: Color(0xffA0A7B1), fontSize: 15),
                              ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 17),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 1),
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
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: Container(),
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    'Đại học',
                                    style: TextStyle(
                                        color: Color(0xFF7A828E),
                                        fontSize: 15.0),
                                  ),
                                  onChanged: (value) {
                                    selected = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 1),
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
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: Container(),
                                  value: selected2,
                                  items: listDrop2,
                                  hint: Text(
                                    '1 Năm',
                                    style: TextStyle(
                                        color: Color(0xFF7A828E),
                                        fontSize: 15.0),
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
                        margin: EdgeInsets.only(left: 17, top: 17),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Row(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 2, right: 6),
                                        child: Text(
                                          "Ngôn ngữ",
                                          style: TextStyle(
                                              color: Color(0xffA0A7B1),
                                              fontSize: 15),
                                        ),
                                      ),
                                      Align(
                                        child: Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ],
                                    alignment: Alignment.topRight,
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(
                                "Cấp độ",
                                style: TextStyle(
                                    color: Color(0xffA0A7B1), fontSize: 15),
                              ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 17),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 1, bottom: 1),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFAFB7C2)),
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 1),
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
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: Container(),
                                  value: selected4,
                                  items: listDrop4,
                                  hint: Text(
                                    'Sơ cấp',
                                    style: TextStyle(
                                        color: Color(0xFF7A828E),
                                        fontSize: 15.0),
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
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Thêm trình độ ngoại ngữ",
                              style: TextStyle(color: Color(0xff2F99DE)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 2, right: 6),
                                  child: Text(
                                    "Công việc gần đây",
                                    style: TextStyle(
                                        color: Color(0xffA0A7B1), fontSize: 15),
                                  ),
                                ),
                                Align(
                                  child: Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1.2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 8.0),
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFAFB7C2)),
                                  contentPadding: EdgeInsets.all(15),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 2, right: 6),
                                  child: Text(
                                    "Công ty gần đây",
                                    style: TextStyle(
                                        color: Color(0xffA0A7B1), fontSize: 15),
                                  ),
                                ),
                                Align(
                                  child: Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1.2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 8.0),
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFAFB7C2)),
                                  contentPadding: EdgeInsets.all(15),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cấp bậc gần đây",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 16),
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
                            'Mới tốt nghiệp/Thực tập sinh',
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
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Công việc hiện tại",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1.2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 8.0),
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFAFB7C2)),
                                  contentPadding: EdgeInsets.all(15),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Công ty hiện tại",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1.2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 8.0),
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFAFB7C2)),
                                  contentPadding: EdgeInsets.all(15),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cấp bậc hiện tại",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 16),
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
                            'Mới tốt nghiệp/Thực tập sinh',
                            style: TextStyle(
                                color: Color(0xFFAFB7C2), fontSize: 15.0),
                          ),
                          onChanged: (value) {
                            selected1 = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cấp bậc mong muốn",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 16),
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
                            'Mới tốt nghiệp/Thực tập sinh',
                            style: TextStyle(
                                color: Color(0xFFAFB7C2), fontSize: 15.0),
                          ),
                          onChanged: (value) {
                            selected1 = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Thời gian làm việc",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 17, right: 36),
                                  child: Text("Từ"),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 1, right: 36),
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
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      underline: Container(),
                                      value: selected5,
                                      items: listDrop5,
                                      hint: Text(
                                        '2018',
                                        style: TextStyle(
                                            color: Color(0xFF7A828E),
                                            fontSize: 15.0),
                                      ),
                                      onChanged: (value) {
                                        selected5 = value;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 30, right: 30),
                                  child: Text("Đến"),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 16),
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
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: DropdownButton(
                                      iconSize: 35,
                                      isExpanded: true,
                                      underline: Container(),
                                      value: selected5,
                                      items: listDrop5,
                                      hint: Text(
                                        '2019',
                                        style: TextStyle(
                                            color: Color(0xFF7A828E),
                                            fontSize: 15.0),
                                      ),
                                      onChanged: (value) {
                                        selected5 = value;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 2, right: 6),
                                  child: Text(
                                    "Nơi làm việc mong muốn",
                                    style: TextStyle(
                                        color: Color(0xffA0A7B1), fontSize: 15),
                                  ),
                                ),
                                Align(
                                  child: Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 16),
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
                          value: selected3,
                          items: listDrop3,
                          hint: Text(
                            'Tp Hồ Chí Minh,Đà Nẵng,Hải Dương',
                            style: TextStyle(
                                color: Color(0xFF273A44), fontSize: 15.0),
                          ),
                          onChanged: (value) {
                            selected3 = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 2, right: 6),
                                  child: Text(
                                    "Ngành nghề mong muốn",
                                    style: TextStyle(
                                        color: Color(0xffA0A7B1), fontSize: 15),
                                  ),
                                ),
                                Align(
                                  child: Text(
                                    "*",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 16),
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
                            'Bảo hiểm,CNTT/Phần mềm,Gia sư',
                            style: TextStyle(
                                color: Color(0xFF273A44), fontSize: 15.0),
                          ),
                          onChanged: (value) {
                            selected1 = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cấp bậc mong muốn",
                              style: TextStyle(
                                  color: Color(0xffA0A7B1), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 17, right: 17),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 1, bottom: 1),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFAFB7C2)),
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  autocorrect: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 1),
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
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: Container(),
                                  value: selected6,
                                  items: listDrop6,
                                  hint: Text(
                                    'USD/Tháng',
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15.0),
                                  ),
                                  onChanged: (value) {
                                    selected6 = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 36, left: 104, right: 103),
                        child: SizedBox(
                          width: 160,
                          height: 48,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Tiếp Theo",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            color: Color(0xff3277D8),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
