import 'package:flutter/material.dart';

Widget CustomContainer(String title) {
  return Container(
    child: Center(
      child: Container(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    color: Colors.grey[300],
  );
}

Widget RowContainer(String title, String title2, Function(String title) func1,
    Function(String title) func2) {
  return Expanded(
    child: Row(
      children: [
        Expanded(
          child: TextButton(
            child: CustomContainer(title),
            onPressed: () {
              func1(title);
            },
          ),
        ),
        Expanded(
            child: TextButton(
          child: CustomContainer(title2),
          onPressed: () {
            func2(title2);
          },
        )),
      ],
    ),
  );
}
