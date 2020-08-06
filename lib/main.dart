import 'package:flutter/material.dart';
import 'ui/splash_screen.dart';
import 'ui/register_page.dart';
import 'ui/search_job_page.dart';
import 'ui/post_detail_page.dart';
import 'Constans.dart';
import 'ui/main_page.dart';
import 'ui/profile_page.dart';
import 'ui/login_page.dart';
import 'ui/notification_page.dart';
import 'ui/notification_empty_page.dart';
import 'ui/main_post_page.dart';
import 'ui/post_job_page.dart';
import 'ui/job_application.dart';
import 'ui/profile_password_page.dart';
import 'ui/find_job_page.dart';
import 'ui/find_candidate_page.dart';
import 'ui/detail_candidate_page.dart';

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      Constants.searchjob_screen: (BuildContext context) => SearchJobPage(),
      Constants.register: (BuildContext context) => RegisterPage(),
      Constants.main: (context) => MainPage(),
      Constants.post_detail_screen: (context) => PostDetailPage(),
      Constants.profile_screen: (context) => ProfilePage(),
      Constants.login_screen: (context) => LoginPage(),
      Constants.notification_screen: (context) => NotificationPage(),
      Constants.notification_empty_screen: (context) => NotificationEmptyPage(),
      Constants.main_post_screen: (context) => MainPostPage(),
      Constants.post_job_screen: (context) => PostJobPage(),
      Constants.job_application_screen: (context) => JobApplicationPage(),
      Constants.profile_password_screen: (context) => ProfilePasswordPage(),
      Constants.find_job_screen: (context) => FindJobPage(),
      Constants.find_candidate_screen: (context) => FindCandidatePage(),
      Constants.detail_candidate_screen: (context) => DetailCandidatePage(),
    },
  ));
}
