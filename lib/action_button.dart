import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const ActionButton({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? FlatButton(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).textTheme.headline3.color,
              ),
            ),
            onPressed: onPressed,
          )
        : CupertinoButton(
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: onPressed,
          );
  }
}
