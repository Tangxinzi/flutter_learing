import 'package:flutter/material.dart';
import './demo/navigator_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/http_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: FormDemo(),
        initialRoute: '/mdc',
        routes: {
          '/': (context) => Home(),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponents(),
        },
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
        )
      );
    }
}

class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigration',
              onPressed: () => debugPrint('Navigration button is pressed.'),
            ),
            title: Text('FLUTTER'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed.'),
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.white38,
              indicatorColor: Colors.white38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
              LayoutDemo(),
              SliverDemo()
            ],
          ),
          bottomNavigationBar: BottomNavigationBarDemo()
        ),
      );
    }
}

class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: Text(
          'Hello',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black87
          ),
        ),
      );
    }
}