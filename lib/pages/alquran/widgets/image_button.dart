import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.icon,
    required this.tap,
  });
  final String icon;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
      child: Material(
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: InkWell(
          borderRadius: BorderRadius.circular(25.0),
          onTap: tap,
          child: Image.asset(
            icon,
            height: 20.0,
            width: 20.0,
            color: AppColor.whiteColor,
          ),
        ),
      ),
    );
  }
}
