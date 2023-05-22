import 'dart:async';
import 'package:flutter/material.dart';

class StarkSearchBar extends StatefulWidget {
  const StarkSearchBar({Key? key, required this.hintLabel}) : super(key: key);
  final String hintLabel;
  @override
  _userPageContent createState() => _userPageContent();
}

class _userPageContent extends State<StarkSearchBar> {
  late FocusNode _focusNode;

  ///默认不展示控件
  bool _offstage = true;

  ///监听TextField内容变化
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _textEditingController.addListener(() {
      var isVisible = _textEditingController.text.isNotEmpty;
      _updateDelIconVisible(isVisible);
    });
  }

  _updateDelIconVisible(bool isVisible) {
    setState(() {
      _offstage = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                height: double.infinity,
                margin: const EdgeInsets.only(left: 8, right: 50),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(53, 1, 48, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search_rounded),
                    Expanded(
                        flex: 1,
                        child: TextField(
                          controller: _textEditingController,
                          textInputAction: TextInputAction.search,
                          autofocus: false,
                          focusNode: _focusNode,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          decoration: InputDecoration(
                              hintText: widget.hintLabel,
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(
                                      255, 121, 121, 121)), // 修改颜色
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(bottom: 13, left: 10),
                              filled: true,
                              fillColor: Colors.transparent),
                          maxLines: 1,
                          cursorColor: Color.fromARGB(255, 255, 255, 255),
                          cursorRadius: Radius.circular(5),
                        )),
                    Offstage(
                      offstage: _offstage,
                      child: GestureDetector(
                        onTap: () => {_textEditingController.clear()},
                        child: Icon(Icons.highlight_remove),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
