import 'package:flutter/material.dart';

class Loading {
  static void show(BuildContext context) async {
    //show dialog
    showDialog(
      barrierDismissible: false, // when clicking outside noting will happen
      context: context,
      builder: (_) {
        return WillPopScope(
          onWillPop: () async =>
              false, // //the dialog cannot be dismissed by pressing the back button.
          child: Dialog(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // The loading indicator
                  CircularProgressIndicator(
                    color: Colors.greenAccent,
                    strokeWidth: 5,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // Some text
                  Text('Loading...')
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //hide dialog
  static void hide(BuildContext context) {
    Navigator.pop(context);
  }
}
//commit 