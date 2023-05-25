import 'package:flutter/material.dart';

class StarkhHomeBanner extends StatefulWidget {
  StarkhHomeBanner({Key? key}) : super(key: key);

  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkhHomeBanner> {
  void handleClock() {
    print('打卡');
  }

  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 20, left: 15, bottom: 20, right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  constraints: BoxConstraints(
                    maxHeight: 300,
                    maxWidth: 160,
                    minHeight: 200,
                    minWidth: 130,
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '早上好',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(8, 37, 49, 1.000)),
                        ),
                      ],
                    ),
                  )),
                )
              ],
            ),
            Column(
              children: [
                Row(),
                Row(),
              ],
            ),
            Column(
              children: [Row(), Row()],
            ),
          ],
        ));
  }
}
