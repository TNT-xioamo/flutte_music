import 'package:flutter/material.dart';

class StarkhHomeBanner extends StatefulWidget {
  StarkhHomeBanner({Key? key}) : super(key: key);

  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkhHomeBanner> {
  DateTime dateTime = DateTime.now();
  String moment = '';
  @override
  void initState() {
    super.initState();
    handleTime();
  }

  void handleTime() {
    var i = '';
    var hour = dateTime.hour;
    if (hour < 10) {
      i = '早上好';
    } else if (hour < 12) {
      i = '中午好';
    } else if (hour < 18) {
      i = '下午好';
    } else {
      i = '晚上好';
    }
    setState(() {
      moment = i;
    });
  }

  void handleClock() {
    print(dateTime);
  }

  void handleCard() {
    print('去学习啦');
  }

  void _handleDynamic(String type) {
    print(type);
  }

  @override
  Widget build(BuildContext context) {
    @override
    Widget Function(String text) userModule = (String text) => IntrinsicHeight(
          child: InkWell(
              onTap: () => _handleDynamic(text),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 3, left: 7, bottom: 3, right: 7),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(135, 173, 173, .7),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      text,
                      style: TextStyle(color: Color.fromRGBO(230, 255, 255, 1)),
                    ),
                  )
                ],
              )),
        );

    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 20, left: 15, bottom: 20, right: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      constraints: BoxConstraints(
                        // maxHeight: 300,
                        // maxWidth: 160,
                        minHeight: 210,
                        // minWidth: 90,
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 145, 144, 144),
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage('assets/image/clock.webp'),
                              fit: BoxFit.cover)),
                      child: IntrinsicHeight(
                          child: InkWell(
                        onTap: () => handleClock(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: [
                              Text(
                                moment,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(8, 37, 49, 1.000)),
                              )
                            ]),
                            Row(
                              children: <Widget>[
                                Text(
                                  '不要忘记',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(8, 37, 49, 1.000)),
                                ),
                                Text(
                                  '打卡哟',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(22, 120, 161, 1)),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.only(bottom: 8),
                          constraints: BoxConstraints(minHeight: 100),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 145, 144, 144),
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage('assets/image/card.webp'),
                                  fit: BoxFit.cover)),
                          child: userModule('打卡频道'),
                        ))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                padding: EdgeInsets.only(bottom: 8),
                                constraints: BoxConstraints(
                                  minHeight: 100,
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 145, 144, 144),
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/game.webp'),
                                        fit: BoxFit.cover)),
                                child: userModule('关注动态')))
                      ],
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(bottom: 8),
                              constraints: BoxConstraints(
                                minHeight: 100,
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 145, 144, 144),
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/image/gift.webp'),
                                      fit: BoxFit.cover)),
                              child: userModule('游玩广场'),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              padding: EdgeInsets.only(bottom: 8),
                              constraints: BoxConstraints(
                                minHeight: 100,
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 145, 144, 144),
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/village.webp'),
                                      fit: BoxFit.cover)),
                              child: userModule('学习村落'),
                            )),
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
