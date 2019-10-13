//=====================================================================================================================================================//
//======================================================= Stateles Widget Tutorial ====================================================================//
//=====================================================================================================================================================//
//================================================================//
//    |====== Date cerated : 07 October 2019           ======|
//    |====== Programmer   : dhikihandika              ======|
//    |====== Github       : dhikihandika              ======|
//    |====== Email        : dhikihandika36@gmail.com  ======|
//================================================================//
// => Stateless Widget its widgets does not require mutable state

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Simple tutorial StatelessWidget',
    home: MyApp(),                                                // Define class MyApp() its home
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

// MyApp class program
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize= 30.0;
    final double myIconSize= 40.0;
    final TextStyle myTextStyle = TextStyle(color: Colors.grey[800], fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
            title: Text("Favorite", style: myTextStyle,),
            icon: Icon(Icons.favorite, size:myIconSize, color: Colors.red)
        ),
        MyCard(
            title: Text(" alaram", style: myTextStyle,),
            icon: Icon(Icons.alarm, size:myIconSize, color: Colors.blue)
        ),
        MyCard(
            title: Text("Airports Shuttle", style: myTextStyle,),
            icon: Icon(Icons.airport_shuttle, size:myIconSize, color: Colors.amber)
        ),
        MyCard(
            title: Text("Done", style: myTextStyle,),
            icon: Icon(Icons.done, size:myIconSize, color: Colors.green)
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget", style: TextStyle(fontSize: 25.0),),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );

  }
}

// Create reusable stateless widget
class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Card(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[this.title, this.icon],
            ),
          )),
    );
  }
}
