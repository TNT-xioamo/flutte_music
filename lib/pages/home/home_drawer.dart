import 'package:flutter/material.dart';
import 'dart:async';

class StarkDrawer extends StatefulWidget {
  const StarkDrawer({Key? key}) : super(key: key);
  @override
  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Drawer(
          elevation: 16.0,
          child: Stack(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(65, 1, 1, 1)),
                // image: DecorationImage(
                //     image: NetworkImage(""),
                //     fit: BoxFit.cover)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(106, 255, 255, 255),
                ),
                accountName: Text('name:xxxx'),
                accountEmail: Text('email:22222@163.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
