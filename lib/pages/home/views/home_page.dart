import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';
import 'package:the_quran_app/constants/string.dart';
import 'package:the_quran_app/pages/home/widget/home_item.dart';
import 'package:the_quran_app/pages/home/widget/round_paint.dart';
import 'package:the_quran_app/pages/home/widget/time.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [_TopView(size: size), const _ItemPointView()],
      ),
    );
  }
}

class _TopView extends StatelessWidget {
  const _TopView({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.60,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: size.height * .37,
                  child: Image.asset(
                    AppString.mosqueAsset,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      AppColor.primaryColor,
                      AppColor.overprimColor.withOpacity(0.75)
                    ]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
              child: Column(
                children: [
                  const _Address(),
                  _CurrentStatus(size: size),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeWidget(size: size, title: "Start"),
                      TimeWidget(size: size, title: "End"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ItemPointView extends StatelessWidget {
  const _ItemPointView();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 370.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColor.whiteColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeItem(
                  icon: AppString.handAsset,
                  title: AppString.kalman,
                  tap: () {},
                ),
                HomeItem(
                  title: AppString.alQuran,
                  icon: AppString.quranAsset,
                  tap: () {},
                ),
                HomeItem(
                  title: AppString.alhedath,
                  icon: AppString.hadathAsset,
                  tap: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeItem(
                  tap: () {},
                  icon: AppString.asmalulAsset,
                  title: AppString.asmaulhusna,
                ),
                HomeItem(
                  tap: () {},
                  title: AppString.tasbih,
                  icon: AppString.tasbihAsset,
                ),
                HomeItem(
                    tap: () {},
                    title: AppString.qiblaCompass,
                    icon: AppString.compassAsset)
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeItem(
                  tap: () {},
                  icon: AppString.siyamtimingAsset,
                  title: AppString.siyamTiming,
                ),
                HomeItem(
                  tap: () {},
                  title: AppString.duaforeveryDay,
                  icon: AppString.prayAsset,
                ),
                HomeItem(
                    tap: () {},
                    title: AppString.hajjUmrah,
                    icon: AppString.kaabaAsset)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CurrentStatus extends StatelessWidget {
  const _CurrentStatus({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Isha".toUpperCase(),
            style: TextStyle(color: AppColor.whiteColor, fontSize: 30),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            AppString.currentPreyer,
            style: TextStyle(color: AppColor.whiteColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class _Address extends StatelessWidget {
  const _Address();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Ashulia,Dhaka 1290",
          style: TextStyle(color: AppColor.whiteColor),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: AppColor.overprimsoftColor),
          child: Row(
            children: [
              Image.asset(
                AppString.locationAsset,
                color: AppColor.whiteColor,
                height: 18.0,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                "Dhaka",
                style: TextStyle(color: AppColor.whiteColor),
              ),
            ],
          ),
        )
      ],
    );
  }
}
