import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';
import 'package:the_quran_app/constants/string.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.softPrimColor,
      body: Stack(
        children: const [
          _Image(),
          _Gradient(),
          _TitleSubtitle(),
        ],
      ),
    );
  }
}

class _TitleSubtitle extends StatelessWidget {
  const _TitleSubtitle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppString.appName,
            style: TextStyle(color: AppColor.whiteColor, fontSize: 38),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              AppString.appTitle,
              maxLines: 2,
              style: TextStyle(
                color: AppColor.blackColor.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            AppColor.primaryColor,
            AppColor.overprimColor.withOpacity(0.8)
          ])),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: double.infinity,
          height: 270.0,
          child: Image.asset(
            "assets/images/mosque_long.png",
            fit: BoxFit.fill,
          ),
        ));
  }
}
