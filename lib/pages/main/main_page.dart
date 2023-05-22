import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/pages/home/home_drawer.dart';
import 'package:flutter_application/common-widget/app-widget/app_search_bar.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final List tabs = [
    {'icon': Icon(Icons.art_track_outlined), 'text': '发现'},
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
          child: Builder(
              builder: (context) => AppBar(
                    leading: IconButton(
                        icon: const Icon(Icons.cruelty_free),
                        onPressed: () => Scaffold.of(context).openDrawer()),
                    title: StarkSearchBar(hintLabel: '查询相关方案'),
                    elevation: 0.5,
                    systemOverlayStyle: SystemUiOverlayStyle.light,
                    backgroundColor: Color.fromARGB(15, 0, 47, 255),
                    bottom: null,
                  ))),
      body: SizedBox.expand(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[]),
      ),
      drawer: StarkDrawer(),
    );
  }
}
