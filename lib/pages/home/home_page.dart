import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home/home_banner.dart';
import 'package:flutter_application/pages/home/home_content.dart';

class StarkhomePage extends StatefulWidget {
  StarkhomePage({Key? key}) : super(key: key);

  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkhomePage> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      // 处理滚动事件的逻辑
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromRGBO(34, 40, 74, 1.000),
        ),
        child: Column(
          children: <Widget>[
            StarkhHomeBanner(),
            Expanded(child: StarkhHomeContent(key: ValueKey(010)))
          ],
        ),
      ),
    );
  }
}
