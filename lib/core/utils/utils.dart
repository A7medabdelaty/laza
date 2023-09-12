import 'package:flutter/material.dart';

class Utils {
  static void showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 15),
            Text("Loading..."),
          ],
        ),
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static Widget loadingIndicator() {
    return const Center(child: CircularProgressIndicator());
  }

  static void showSnackBar({text, context}) {
    SnackBar snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
