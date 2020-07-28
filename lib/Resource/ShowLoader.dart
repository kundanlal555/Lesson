
import 'package:flutter/material.dart';
import './Loader.dart';

showLLoader(context) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      child: LinearProgressIndicatorApp());
}

hideLLoader(context) {
  return Navigator.of(context).pop();
}



