import 'package:flutter/material.dart';
import 'package:flutter_app_demo/utils/emoji_util.dart';
import 'package:flutter_app_demo/utils/emoticon_widget.dart';
import 'package:page_indicator/page_indicator.dart';

class EmojiScreen extends StatefulWidget {

  static enter(BuildContext context) {
    return Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext content) => EmojiScreen()));
  }

  EmojiScreen({Key key}) : super(key: key);

  @override
  _EmojiScreenState createState() => new _EmojiScreenState();
}

class _EmojiScreenState extends State<EmojiScreen> {

  @override
  void initState() {
    super.initState();

    print(EmojiUtil.emojiMap.length.toString());
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("微信表情组件"),
      ),
      body: EmoticonWidget(emoticonClick),
    );
  }

  emoticonClick(String name){
    print(name);
  }

}
