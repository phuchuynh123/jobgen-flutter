import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobgen/presenter/splash_creen_presenter.dart';
import 'package:flutter_jobgen/Constans.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> implements SplashContract{
  SplashPresenter _presenter;
  @override
  void initState() {
    super.initState();
    _presenter = SplashPresenter(this);

    _presenter.fetchSomething();
  }

  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFDBE4FC),
                    Color(0xFFFCFDFF)
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 201.0,),
              child: Column(
                children: <Widget>[
                  Text("Mạng xã hội",style: TextStyle(fontSize: 20.0,color: Color(0xFF273A44)),),
                  SizedBox(height: 10.0,),
                  Text("Việc làm",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),)
    ],
    ),
    ),
              Container(
                padding: EdgeInsets.only(bottom: 200),
                child: Image.asset("assets/images/19729.png"),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void goToNextScreen(bool shouldLogin) {
    if (shouldLogin) {
      Navigator.pushReplacementNamed(context, Constants.main);
    } else {
      Navigator.pushReplacementNamed(context, Constants.home_screen);
    }
  }

  @override
  void onHideLoading() {
    // TODO: implement onHideLoading
  }

  @override
  void onShowLoading() {
    // TODO: implement onShowLoading
  }
}
