import 'package:calling_ui/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../rounded_button.dart';
import 'dial_button.dart';

/// 接听界面
class ScreenPage extends StatefulWidget {
  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(50, 60, 240, 0.3),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "怎么还不接电话",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "接听中…",
                style: TextStyle(color: Colors.white60, fontSize: 12),
              ),
              IgnorePointer(
                child: Container(
                  alignment: Alignment.center,
                )
              ),
              Stack(alignment: Alignment.center,
                children: [
                  IgnorePointer(
                      child: Container(
                        alignment: Alignment.center,
                      )
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [ //阴影
                          BoxShadow(
                            // color:Colors.black54,
                              offset: Offset(2.0,2.0),
                              blurRadius: 4.0
                          )
                        ]
                    ),
                  ),
                  IgnorePointer(
                    child: Container(
                      alignment: Alignment.center,
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.0, color: Colors.black38),
                        boxShadow: const [BoxShadow( offset: Offset(5.0, 1.0),    blurRadius: 10.0, spreadRadius: 1.0) ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/dog.jpg"), fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Wrap(
                        runSpacing: 20, //交叉轴上子控件之间的间距
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        children: [
                          DialButton(
                            iconSrc: "assets/icons/Icon Mic.svg",
                            text: "Audio",
                            press: () {},
                          ),
                          DialButton(
                            iconSrc: "assets/icons/Icon Volume.svg",
                            text: "Microphone",
                            press: () {},
                          ),
                          DialButton(
                            iconSrc: "assets/icons/Icon Video.svg",
                            text: "Video",
                            press: () {},
                          ),
                          DialButton(
                            iconSrc: "assets/icons/Icon Message.svg",
                            text: "Message",
                            press: () {},
                          ),
                          DialButton(
                            iconSrc: "assets/icons/Icon User.svg",
                            text: "Add contact",
                            press: () {},
                          ),
                          DialButton(
                            iconSrc: "assets/icons/Icon Voicemail.svg",
                            text: "Voice mail",
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      RoundedButton(
                        iconSrc: "assets/icons/call_end.svg",
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                        },
                        color: Colors.red,
                        iconColor: Colors.white,
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
