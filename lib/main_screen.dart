import 'package:flutter/material.dart';
import 'package:fortuna/mobile_page/main_m_page.dart';
import 'package:fortuna/web_page/main_w_page.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainMPage();
        } else if (constraints.maxWidth <= 1000) {
          return MainWPage(
            gridCount: 3,
          );
        } else {
          return MainWPage(
            gridCount: 5,
          );
        }
      },
    );
  }
}
