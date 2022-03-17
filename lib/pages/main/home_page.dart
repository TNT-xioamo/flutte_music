import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text('网抑郁'),
          elevation: 0.5,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.pinkAccent,
          bottom: null,
        )
      ),
      body: Center(
        child: const Text('我的网疑云'),
      ),
    );
  }
}