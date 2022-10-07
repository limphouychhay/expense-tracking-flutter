import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    this.borderRadius,
    this.color = AppColors.white,
  }) : super(key: key);

  final double width;
  final double height;
  final Color? color;
  final String image;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          borderRadius ?? BorderRadius.circular(Metrics.instance.borderRadius),
      child: Container(
        color: color,
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/images/white-placeholder.png',
          // image: '${dotenv.env['FILE_BASE_URL']}$image',
          image: image,
          width: width,
          height: height,
          imageErrorBuilder: (_, ob, st) {
            return Container(
              padding: EdgeInsets.all(Metrics.instance.large),
              width: width,
              height: height,
              child: Image.asset(
                'assets/launcher_icon/customer${dotenv.env['ENV']}.png',
                fit: BoxFit.contain,
              ),
            );
          },
        ),
      ),
    );
  }
}
