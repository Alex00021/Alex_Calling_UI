import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class RoundedButton extends StatelessWidget {
  /// 图标大小
  final double size;
  
  /// 图标照片
  final String iconSrc;

  /// 图标颜色
  final Color color, iconColor;

  /// 点击事件
  final VoidCallback press;


  const RoundedButton({
    Key? key,
    this.size = 64,
    required this.iconSrc,
    this.color = Colors.white,
    this.iconColor = Colors.black,
    required this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //全屏宽度和高度
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
      width: 50,
      child: FlatButton(
        padding: EdgeInsets.all(5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        color: color,
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: iconColor),
      ),
    );
  }
}
