import 'package:flutter/material.dart';

alert(BuildContext context, String title, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text(title),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.black87),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      });
}

alertDownload(BuildContext context, String title, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text(title),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.black87),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      });
}


Future<bool> asyncConfirmDialog(BuildContext context, String header, String msg) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(header),
        content: Text(msg),
        actions: <Widget>[
          FlatButton(
            child: const Text('Não'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          FlatButton(
            child: const Text('Sim'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          )
        ],
      );
    },
  );
}