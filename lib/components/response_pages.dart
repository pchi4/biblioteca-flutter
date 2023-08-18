import 'package:flutter/material.dart';

class ResponsePages extends StatelessWidget {
  final Widget screenMobile;
  final Widget screenTablet;
  final Widget screemDesktop;

  const ResponsePages(
      {super.key,
      required this.screenMobile,
      required this.screenTablet,
      required this.screemDesktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return screenMobile;
        } else if (constraints.maxWidth < 1100) {
          return screenTablet;
        } else {
          return screemDesktop;
        }
      },
    );
  }
}
