import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final AppBar appBar;
  final Drawer drawer;
  final Widget Function(BuildContext context, SizeInformation constraints)
      builder;

  ResponsiveWidget({@required this.builder, this.appBar, this.drawer});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;
    SizeInformation sizeInformation =
        SizeInformation(width, height, orientation);

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: appBar,
          drawer: drawer,
          body: Builder(builder: (context) {
            return builder(context, sizeInformation);
          })),
    );
  }
}

class SizeInformation {
  double width;
  double height;
  Orientation orientation;

  SizeInformation(this.width, this.height, this.orientation);
}
