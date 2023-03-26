import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String icon;
  final GestureTapCallback tap;
  const HomeItem({
    super.key,
    required this.title,
    required this.icon,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: AppColor.softPrimColor,
        borderRadius: BorderRadius.circular(12.0),
        radius: 10.0,
        onTap: tap,
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                  color: AppColor.softPrimColor,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Image.asset(
                icon,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            SizedBox(
              width: 80.0,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  // fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
