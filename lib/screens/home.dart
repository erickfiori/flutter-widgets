import 'package:flutter/material.dart';
import '../utils/widgets.dart';
import '../utils/routes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    navigateTo(context, SecondPage());
                  },
                  child: Text('Second Page!'),
                  color: Colors.amber,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
