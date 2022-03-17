import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/**
 * Created with VS CODE.
 * Package: utils
 * Author: Stark
 * Create Time: 2022
 * Description: 公共的titlebar
 */

class AppTouchBar extends StatelessWidget {
  const AppTouchBar({Key? key}) : super(key: key);
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
              },
            ),
            title: const Text(
              '首页',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            elevation: 0.5,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: const Color.fromARGB(220, 226, 36, 0),
            bottom: null,
          )),
    );
  }
}
