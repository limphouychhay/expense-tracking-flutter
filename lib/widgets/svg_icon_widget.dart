import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconWidget extends StatelessWidget {
  const SvgIconWidget(this.iconPath, {Key? key, this.color, this.size})
      : super(key: key);

  final String iconPath;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconPath, color: color, width: size, height: size);
  }
}
