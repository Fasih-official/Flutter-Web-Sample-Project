import 'package:assessment_app/utils/decorations.dart';
import 'package:assessment_app/utils/dimens.dart';
import 'package:assessment_app/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/app_sizes.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';
import 'package:scrips_core/widgets/general/circle_image.dart';
import 'package:scrips_core/widgets/general/field_and_label.dart';

import '../utils/utils.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: getBody(size),
    );
  }

  getBody(Size size) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
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
              ),
              horizontalSpace(width: (size.width * 0.04).toInt()),
              Expanded(
                child: Container(
                  decoration: rectangularBgColorBoxDecorationWithRadius(0),
                  child: Column(
                    children: [
                      Container(
                        decoration:
                            rectangularWhiteBoxDecorationWithRadiusElevation(0, 2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: APPLICATION_LEFT_RIGHT_SPACE),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: 0.0,
                                child: Text(
                                  'Done',
                                  style: labelTextStyle500Weight(18, vaccinesColor),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Review Item',
                                    style: labelTextStyle500Weight(18, vaccinesColor),
                                  ),
                                ),
                              ),
                              Text(
                                'Done',
                                style: labelTextStyle500Weight(14, normalBtnTextColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
