import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showFullWidthDialog(BuildContext context, Widget child, isCancelable){
  showDialog(
    barrierDismissible: isCancelable,
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      child: child,
    ),
  );
}