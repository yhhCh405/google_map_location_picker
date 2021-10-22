import 'package:flutter/material.dart';

class AutoHideKeyboard extends StatelessWidget {
  final Widget child;
  AutoHideKeyboard({this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child ?? Container(),
    );
  }

  void unFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
