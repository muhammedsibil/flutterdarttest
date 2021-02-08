

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertest/StoreHome/appbar.dart';
import 'package:fluttertest/StoreHome/bottomNavigationbar.dart';
import 'package:fluttertest/StoreHome/home.dart';
import 'package:fluttertest/datamodel/data.dart';
double width;

class StoreHome extends StatefulWidget {

  @override
  _StoreHomeState createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {








  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(4278520600),

      appBar: MyAppBar(),

      body: MyHome(),

      bottomNavigationBar: MyNavigationBar(),
    );



}



}











