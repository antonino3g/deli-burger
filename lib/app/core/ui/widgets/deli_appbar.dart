import 'package:flutter/material.dart';

class DeliAppBar extends AppBar {
  DeliAppBar({Key? key, double elevation = 2})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: elevation,
          centerTitle: true,
          title: Image.asset(
            'assets/images/deli_logo.png',
            width: 55,
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        );
}
