import 'package:flutter/material.dart';
import 'partials.dart';
import 'shared/styles.dart';

void main() {
  // debugPaintSizeEnabled = true;
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


       
    Widget body = Container(
      padding: EdgeInsets.all(0),
      color: Color(0xff7bbd37),
      child: Column(
        children: <Widget>[headerHero, fruitDetails],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: lightTint,
          elevation: 0,
          leading: BackButton(
            color: Colors.white,
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.card_giftcard),
            )
          ],
          title: Text('Guava', style: headerTextStyle),
        ),
        backgroundColor: bgColor,
        body: ListView(
          children: <Widget>[body, footer(context)],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 10,
          child: Icon(Icons.add, color: Colors.black, size: 35),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
