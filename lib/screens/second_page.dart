import 'package:flutter/material.dart';
import '../utils/widgets.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    SnackBar snackBar = SnackBar(
                      content: Text(
                        "HERO YOU ARE!",
                      ),
                    );
                    return Scaffold.of(context).showSnackBar(snackBar);
                  },
                  child: Text('SNACK IT!'),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
