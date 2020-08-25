import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, constraints) {
        return Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                SnackBar snackBar =
                    SnackBar(content: Text("HERE\'S YOU SNACKBAR!"));
                return Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('SNACK!'),
            ),
          ),
        );
      },
    );
  }
}
