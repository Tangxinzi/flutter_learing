import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_button_demo.dart';
import './pop_menu_button_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(children: <Widget>[
        ListItem(
          title: 'FloatingActionButton',
          page: FloatingActionButtonDemo(),
        ),
        ListItem(
          title: 'Button',
          page: ButtonDemo(),
        ),
        ListItem(
          title: 'PopupMenuButton',
          page: PopupMenuButtonDemo(),
        ),
      ],)
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      }
    );
  }
}