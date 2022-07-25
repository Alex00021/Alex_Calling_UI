import 'package:calling_ui/view/page_two/screen_page.dart';
import 'package:calling_ui/view/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/back_ground.jpg",
          fit: BoxFit.cover,
        ),
        // Black Layer
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 30,bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //
                    child: Column(
                      children: [
                        Text(
                          "九霄",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "寅虎 04:30".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(
                        press: () {},
                        iconSrc: "assets/icons/Icon Mic.svg",
                      ),
                      RoundedButton(
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenPage()));
                        },
                        color: Colors.red,
                        iconColor: Colors.white,
                        iconSrc: "assets/icons/call_end.svg",
                      ),
                      RoundedButton(
                        press: () {},
                        iconSrc: "assets/icons/Icon Volume.svg",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
        ),
      ],
    );
  }
}
