// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:the_quran_app/constants/color.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.04),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColor.primaryColor.withOpacity(0.5)),
      child: Column(
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(color: AppColor.whiteColor, fontSize: 16.0),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            children: [
              Text(
                "7.00",
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                "PM",
                style: TextStyle(color: AppColor.whiteColor, fontSize: 20.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
