import 'package:assessment_app/utils/utils.dart';
import 'package:assessment_app/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';

import '../../utils/decorations.dart';

class TextObservation extends StatelessWidget {
  const TextObservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HorizontalTextAndIcon(
          text: 'Observations',
          assetUrl: 'assets/images/ic_add_observation.png',
          normalText: false,
          textColor: vaccinesColor,
        ),
        verticalSpace(),
        Container(
          width: 1,
          decoration: appSeparationLineSkyBlue,
        ),
        verticalSpace(),
        Text(
          'ADD TEXT',
          style: labelTextStyle700Weight(12, vaccinesColor),
        ),
        verticalSpace(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Container(
            decoration:
                rectangularWhiteBoxDecorationWithRadiusElevation(12, 1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FieldAndText(
                    isManadatory: true,
                    hint: 'Enter Code',
                    fieldDivisionRatio: 3,
                    text: 'CODE',
                  ),
                  verticalSpace(),
                  FieldAndText(
                    hint: 'Enter Description',
                    fieldDivisionRatio: 1,
                    text: 'VALUE',
                    minLines: 5,
                    maxLines: 5,
                    maxLength: 400,
                    counterText: null,
                  ),
                  verticalSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: rectangularDarkGreyBoxDecorationWithRadiusElevation(20, 2),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: CustomizedButton(text: 'Save', verticalPadding: 10,),
                            ),
                          ),
                          horizontalSpace(),
                          Container(
                            decoration: rectangularBgColorBoxDecorationWithRadiusElevation(20, 2),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: CustomizedButton(text: 'Cancel', verticalPadding: 10,textColor: normalBtnTextColor,),
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/images/ic_bin.png',width: 16,height: 16,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        verticalSpace(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Row(
            children: [
              Container(
                decoration: rectangularBgColorBoxDecorationWithRadiusElevation(20, 2),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomizedButton(text: 'Done', verticalPadding: 10,textColor: normalBtnTextColor,),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(),
      ],
    );
  }
}
