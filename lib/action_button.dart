import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color textColor;
  const ActionButton({Key key, this.text, this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? FlatButton(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
//color: Theme.of(context).textTheme.headline3.color,
                color: textColor ??
                        Theme.of(context).brightness != Brightness.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.headline3.color,
              ),
            ),
            onPressed: onPressed,
          )
        : CupertinoButton(
            child: Text(text,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: textColor)),
            onPressed: onPressed,
          );
  }
}
