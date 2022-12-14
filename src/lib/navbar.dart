import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:src/BackendConnection/SampleProductJson.dart';
import 'package:src/Pages/BarcodeFailedPage.dart';
import 'package:src/Pages/InitialSetupPage.dart';
import 'package:src/Pages/MePage.dart';
import 'package:src/Pages/login.dart';
import 'package:src/Pages/SettingsPage.dart';
import 'package:src/Pages/SearchDefaultPage.dart';
import 'package:src/Pages/ProductInfoPage.dart';

import 'BackendConnection/Product.dart';


class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;

  // Screens for each tab in the narbar
  final screens = [
    MePage(),
    SearchDefaultPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.red,
          buttonBackgroundColor: Color(0xff343a40),
          // buttonColor: Colors.red,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(Icons.person, size: 30, color: Colors.white,),
            Icon(Icons.search, size: 30, color: Colors.white,),
            Icon(Icons.settings, size: 30, color: Colors.white,),
          ],
          onTap: (index) {
            //Handle button tap
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      // body: Container(color: Colors.blueAccent),
    );
  }
}
