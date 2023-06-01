import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StarkhHomeContent extends StatefulWidget {
  StarkhHomeContent({Key? key}) : super(key: key);

  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkhHomeContent> {
  Color tabColor = Color.fromRGBO(28, 28, 28, 1);
  String activated = 'clock';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void handleToggleTab(String activ) {
    setState(() {
      activated = activ;
    });
  }

  @override
  Widget build(BuildContext context) {
    @override
    Widget ClockItem = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
            child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20),
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(254, 254, 254, 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ))
      ],
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 700,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 6,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(97, 176, 165, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        InkWell(
                          onTap: () => handleToggleTab('clock'),
                          child: Text('打卡',
                              style: TextStyle(
                                  color: activated == 'clock'
                                      ? tabColor
                                      : Color.fromRGBO(192, 192, 192, 1),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                            onTap: () => handleToggleTab('broad'),
                            child: Text(
                              '广播',
                              style: TextStyle(
                                  color: activated == 'broad'
                                      ? tabColor
                                      : Color.fromRGBO(192, 192, 192, 1),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
                child: IntrinsicHeight(
                    child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClockItem,
                ClockItem,
                ClockItem,
                ClockItem,
                ClockItem,
                ClockItem,
                ClockItem
              ],
            )))
          ]),
    );
  }
}
