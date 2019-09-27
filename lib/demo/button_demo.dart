import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );   

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0)
              // ),
              shape: StadiumBorder()
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 0.0,
          // textColor: Theme.of(context).accentColor,
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );   

    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        )
      ],
    ); 

    final Widget expandedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    ); 

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: StadiumBorder()
            ),
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );   

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ButtonBar(
          children: <Widget>[
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              textColor: Theme.of(context).accentColor,
            ),
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              textColor: Theme.of(context).accentColor,
            ),
          ],
        )
      ],
    );   

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedWidthButtonDemo,
            buttonBarDemo
          ],
        ),
      ),
    );
  }
}