import 'package:flutter/cupertino.dart';
import 'package:scrips_core/ui_helpers/app_sizes.dart';
import 'package:scrips_core/widgets/general/circle_image.dart';

import '../../utils/decorations.dart';
import '../../utils/utils.dart';
import '../../utils/widgets.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: rectangularPurpleBarDecorationWithRadius(0),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/ic_badge.png',
                  height: 36,
                ),
                verticalSpace(height: verticalSpaceMediumSize),
                IconAndText(),
                verticalSpace(),
                IconAndText(
                  text: 'Calendar',
                ),
                verticalSpace(),
                IconAndText(
                  text: 'Clinical',
                ),
                verticalSpace(),
                IconAndText(
                  text: 'Patients',
                ),
                verticalSpace(),
                IconAndText(
                  text: 'Billing',
                )
              ],
            ),
            Column(
              children: [
                verticalSpace(),
                IconAndText(
                  text: 'Notifications',
                ),
                verticalSpace(),
                IconAndText(
                  text: 'Help',
                ),
                verticalSpace(height: verticalSpaceMediumSize),
                CircleImage(
                  image: 'assets/images/ic_active_profile.png',
                  size: 36,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
