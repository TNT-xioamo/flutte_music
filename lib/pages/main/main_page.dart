import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final List tabs = [
    {'icon': Icon(Icons.access_alarm), 'text': '发现'},
    {'icon': Icon(Icons.access_alarm), 'text': '播客'},
    {'icon': Icon(Icons.access_alarm), 'text': '关注'},
    {'icon': Icon(Icons.access_alarm), 'text': '云村'},
    {'icon': Icon(Icons.access_alarm), 'text': '我的'},
  ];
  final List<Widget> pages = [
    // Discover(),
    // Oodcast(),
    // Focuson(),
    // Yuncun(),
    // Mine()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: const Text(
              '首页',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            elevation: 0.5,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Color.fromARGB(220, 0, 47, 255),
            bottom: null,
          )
        ),
      body: const Center(
        child: Text('我的app'),
      ),
    );
  }
}
