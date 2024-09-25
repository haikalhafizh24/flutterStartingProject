import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_lecture_app/core/commons/colors_const.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Starting Page',
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
                UIHelper.divider(
                  height: UIHelper.setSp(12),
                ),
                Box(
                  ontap: () {},
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final VoidCallback ontap;
  const Box({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: UIHelper.setSp(100),
        height: UIHelper.setSp(100),
        decoration: BoxDecoration(
          color: ColorConstant.white,
          border: Border.all(
            color: ColorConstant.black,
            width: 3,
          ),
          borderRadius: UIHelper.borderRadiusCircular(all: 8),
        ),
      ),
    );
  }
}
