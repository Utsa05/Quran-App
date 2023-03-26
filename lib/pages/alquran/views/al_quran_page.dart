import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';
import 'package:the_quran_app/constants/string.dart';
import 'package:the_quran_app/pages/alquran/widgets/image_button.dart';

class AlQuranPage extends StatelessWidget {
  const AlQuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: appbar(),
      body: Container(
        //margin: EdgeInsets.only(top: size.height * 0.04),

        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          // borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(35.0),
          //     topRight: Radius.circular(35.0))
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
          child: Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            color: AppColor.bgColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                _LastReadStatus(size: size),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Divider(
                                  thickness: 3.0,
                                  color: AppColor.blackColor.withOpacity(0.1),
                                ),
                              ),
                              TabBar(
                                  labelColor: AppColor.primaryColor,
                                  //indicatorColor: AppColor.primaryColor,
                                  indicatorColor: AppColor.overprimColor,
                                  indicatorWeight: 4.0,
                                  // indicator: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(5.0)),
                                  unselectedLabelColor:
                                      AppColor.blackColor.withOpacity(0.5),
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        AppString.sura,
                                        style: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        AppString.page,
                                        style: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        AppString.juzz,
                                        style: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: TabBarView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ItemListView(),
                                ItemListView(),
                                ItemListView(),
                              ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      toolbarHeight: 80.0,
      elevation: 0.0,
      backgroundColor: AppColor.primaryColor,
      leading: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ImageButton(
          tap: () {},
          icon: AppString.backAsset,
        ),
      ),
      centerTitle: true,
      title: Text(AppString.alQuran),
      actions: [
        ImageButton(
          tap: () {},
          icon: AppString.searchAsset,
        ),
        ImageButton(
          tap: () {},
          icon: AppString.dotAsset,
        )
      ],
    );
  }
}

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(25.0)),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              tileColor: AppColor.whiteColor,
              onTap: () {},
              leading: Container(
                margin: const EdgeInsets.only(right: 15.0),
                height: 40.0,
                width: 40.0,
                child: Stack(
                  children: [
                    Image.asset(
                      AppString.shapeAsset,
                      color: AppColor.primaryColor,
                      height: 45.0,
                      width: 45.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: const Text(
                "Al-Fatihah",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "The Opening",
                style: TextStyle(
                    color: AppColor.blackColor.withOpacity(0.4),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                "Meccan",
                style: TextStyle(
                    color: AppColor.blackColor.withOpacity(0.4),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          );
        });
  }
}

class _LastReadStatus extends StatelessWidget {
  const _LastReadStatus({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15.0),
                height: 45.0,
                width: 45.0,
                child: Stack(
                  children: [
                    Image.asset(
                      AppString.hexagonAsset,
                      color: AppColor.primaryColor,
                      height: 45.0,
                      width: 45.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Al-Ma'idah",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor),
              ),
            ],
          ),
          // const SizedBox(
          //   height: 7.0,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Last Read",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "01 Aug 23",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor.withOpacity(0.4)),
                  ),
                ],
              ),
              Image.asset(
                AppString.quranreadAsset,
                height: 65.0,
                color: AppColor.blackColor.withOpacity(0.1),
              )
            ],
          )
        ],
      ),
    );
  }
}
