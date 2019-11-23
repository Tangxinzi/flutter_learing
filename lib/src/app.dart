import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_japanese_lite/src/add/add.dart';
import 'package:flutter_japanese_lite/src/home/home.dart';
import 'package:flutter_japanese_lite/src/profile/profile.dart';
import 'package:flutter_japanese_lite/src/providers/current_page.dart';
import 'package:flutter_japanese_lite/src/widgets/app_bottom_navigation_bar.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'w.store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black87,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: ChangeNotifierProvider<CurrentPage>(
        builder: (context) => CurrentPage(),
        child: Scaffold(
          body: Consumer<CurrentPage>(
            builder: (context, currentPage, child) => IndexedStack(
              index: currentPage.index,
              children: <Widget>[
                Home(),
                Add(),
                Profile(),
              ],
            ),
          ),
          bottomNavigationBar: AppBottomNavigationBar(),
        ),
      ),
    );
  }
}
