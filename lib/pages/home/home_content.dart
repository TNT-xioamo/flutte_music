import 'package:flutter/material.dart';

class StarkhHomeContent extends StatefulWidget {
  StarkhHomeContent({Key? key}) : super(key: key);

  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkhHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 145, 144, 144),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
