import 'package:assessment_app/utils/decorations.dart';
import 'package:assessment_app/utils/dimens.dart';
import 'package:assessment_app/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/app_sizes.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';
import 'package:scrips_core/widgets/general/button.dart';
import 'package:scrips_core/widgets/general/circle_image.dart';
import 'package:scrips_core/widgets/general/custom_table_list.dart';
import 'package:scrips_core/widgets/general/field_and_label.dart';
import 'package:scrips_core/widgets/stats_counter.dart';

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
                            rectangularWhiteBoxDecorationWithRadiusElevation(
                                0, 2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: APPLICATION_LEFT_RIGHT_SPACE),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: 0.0,
                                child: Text(
                                  'Done',
                                  style: labelTextStyle700Weight(
                                      18, vaccinesColor),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Review claim',
                                    style: labelTextStyle700Weight(
                                        18, vaccinesColor),
                                  ),
                                ),
                              ),
                              Text(
                                'Done',
                                style: labelTextStyle700Weight(
                                    14, normalBtnTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      verticalSpace(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: APPLICATION_LEFT_RIGHT_SPACE),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration:
                                            rectangularWhiteBoxDecorationWithRadiusElevation(
                                                8, 2),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'Patient',
                                                        value: 'Arely Caldwell',
                                                        valueColor:
                                                            normalBtnTextColor,
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'MRN',
                                                        value: 'MRN0000001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Age / Gender',
                                                        value: '28 Y 5 M, M',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Address',
                                                        value:
                                                            '25, Sheikh Zayer Rd, Dubai, UAE',
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'Encounter Date',
                                                        value: 'Oct 10, 2018 9:30a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Invoice #',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Invoice Date',
                                                        value: 'Oct 10, 2018 9:30a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Claim ID',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Claim Date',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Provider',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Encounter #',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'Claim Status',
                                                        value: 'Oct 10, 2018 9:30a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Sponsor',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Insurance',
                                                        value: 'Oct 10, 2018 9:30a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Policy #',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name:
                                                            'Eligibility Start Date',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Expiration Date',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Phone #',
                                                        value: 'INV 1018-INS-0001',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              verticalSpace(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Sponsor',
                                                    style: labelTextStyle700Weight(
                                                        14, vaccinesColor),
                                                  ),
                                                  verticalSpace(),
                                                  FieldAndText(
                                                    isManadatory: true,
                                                    hint: '13/CX/235/445',
                                                    text: 'Policy Number ',
                                                    fieldDivisionRatio: 3,
                                                  )
                                                ],
                                              ),
                                              verticalSpace(),
                                              Text(
                                                'If you want to change the sponsor you need to cancel the invoice first.',
                                                style: normalLabelTextStyle(
                                                    12, labelTextStyleTextColor),
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Container(
                                                height: 0.7,
                                                decoration:
                                                    appSeparationLineDecoration,
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'DIAGNOSES',
                                                    style: labelTextStyle700Weight(
                                                        14, vaccinesColor),
                                                  ),
                                                  verticalSpace(),
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      children: List.generate(
                                                          20,
                                                          (index) => Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      '${index + 1}',
                                                                      style: labelTextStyle700Weight(
                                                                          12,
                                                                          vaccinesColor),
                                                                    ),
                                                                    horizontalSpace(),
                                                                    Row(
                                                                      children: [
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .start,
                                                                          children: [
                                                                            Text(
                                                                              'Cervical Radiculitis',
                                                                              style: labelTextStyle700Weight(
                                                                                  12,
                                                                                  vaccinesColor),
                                                                            ),
                                                                            verticalSpace(
                                                                                height:
                                                                                    5),
                                                                            Text(
                                                                              'M54.12ICD-10',
                                                                              style: normalLabelTextStyle(
                                                                                  12,
                                                                                  labelTextStyleTextColor),
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Text(
                                                                                  'Primary',
                                                                                  style: normalLabelTextStyle(12, labelTextStyleTextColor),
                                                                                ),
                                                                                horizontalSpace(width: 5),
                                                                                Image.asset(
                                                                                  'assets/images/ic_arrow_dropdown.png',
                                                                                  height: 8,
                                                                                  width: 8,
                                                                                )
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                        horizontalSpace(),
                                                                        Image.asset(
                                                                          'assets/images/ic_bin.png',
                                                                          height:
                                                                              16,
                                                                        )
                                                                      ],
                                                                    )
                                                                  ],
                                                                ),
                                                              )),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Container(
                                                height: 0.7,
                                                decoration:
                                                    appSeparationLineDecoration,
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              buildResponsiveTable(size),
                                              verticalSpace(),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 3,
                                                    child: FieldAndText(
                                                      hint: 'Enter note',
                                                      fieldDivisionRatio: 0,
                                                      text: 'NOTE',
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 7,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              rectangularBgColorBoxDecorationWithRadius(
                                                                  8),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal: 20,
                                                                    vertical: 20),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                NameAndValue(
                                                                  name: 'Net Total',
                                                                  value:
                                                                      'Oct 10, 2018 9:30a',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Patient Share Total',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Excluded Total',
                                                                  value:
                                                                      'Oct 10, 2018 9:30a',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Patient Payable',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Patient Outstanding',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Sponsor Amount Total',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Sponsor Payment Total',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                                verticalSpace(
                                                                    height: 5),
                                                                NameAndValue(
                                                                  name:
                                                                      'Sponsor Outstanding Total',
                                                                  value:
                                                                      'INV 1018-INS-0001',
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Container(
                                                height: 0.7,
                                                decoration:
                                                    appSeparationLineDecoration,
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CircleIconAndText(),
                                                      horizontalSpace(),
                                                      CircleIconAndText(
                                                        assetURL: 'assets/images/ic_cancel.png',
                                                        name: 'Cancel',
                                                      ),
                                                      horizontalSpace(),
                                                      CircleIconAndText(
                                                        assetURL: 'assets/images/ic_pause.png',
                                                        name: 'Hold',
                                                      ),
                                                    ],
                                                  ),
                                                  CircleIconAndText(
                                                    assetURL: 'assets/images/ic_eye.png',
                                                    name: 'View Clinical\nNote',
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      verticalSpace(),
                                      Text('PAYMENT',style: labelTextStyle700Weight(12, vaccinesColor),),
                                      verticalSpace(),
                                      Container(
                                        decoration:
                                        rectangularWhiteBoxDecorationWithRadiusElevation(
                                            8, 2),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'Payment Method',
                                                        value: 'Cash',
                                                        valueColor:
                                                        normalBtnTextColor,
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Payment Date',
                                                        value: 'Oct 18, 2018 at 10:10a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Encounter Date',
                                                        value: 'Oct 18, 2018 at 10:10a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Receipt #',
                                                        value:
                                                        'Oct 18, 2018 at 10:10a',
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'To Invoice #',
                                                        value: 'INV 1018-PAT-0001',
                                                        valueColor:
                                                        normalBtnTextColor,
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Invoice Date',
                                                        value: 'Oct 10, 2018 9:30a',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Provider',
                                                        value: 'Dr Jack Smith',
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      NameAndValue(
                                                        name: 'Status',
                                                        value: 'Paid',
                                                        valueColor:
                                                        normalBtnTextColor,
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Amount Paid',
                                                        value: '98.10',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Received by',
                                                        value: 'Rebecca Schmitt',
                                                      ),
                                                      verticalSpace(height: 5),
                                                      NameAndValue(
                                                        name: 'Paid by',
                                                        value: 'Arely Caldwell',
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Container(
                                                height: 0.7,
                                                decoration:
                                                appSeparationLineDecoration,
                                              ),
                                              verticalSpace(
                                                  height: verticalSpaceMediumSize),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  CircleIconAndText(
                                                    assetURL: 'assets/images/ic_cancel.png',
                                                    name: 'Cancel',
                                                  ),
                                                  horizontalSpace(),
                                                  CircleIconAndText(
                                                    assetURL: 'assets/images/ic_eye.png',
                                                    name: 'View Clinical\nNote',
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      verticalSpace(height: verticalSpaceMediumSize),

                                    ],
                                  ),
                                ),
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

  Column buildResponsiveTable(Size size) {
    var actualCardWidth = size.width - 170 - (size.width * 0.04).toInt();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: (actualCardWidth / 14) * 0.5,
              child: Text(
                '#',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 1.4,
              child: Text(
                'SERVICES',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 0.5,
              child: Text(
                'QTY',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 0.5,
              child: Text(
                'NET',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'SPONSOR\nAMOUNT',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'PATIENT\nPAYABLE',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'PAYMENT\nAMOUNT',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'AMOUNT TO\nRESUBMIT',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'DENIAL\nREASON',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14),
              child: Text(
                'COVERAGE',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 1.5,
              child: Text(
                'SERVICE DATE',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: actualCardWidth / 14,
              child: Text(
                'AUTH CODE',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 1.5,
              child: Text(
                'VALIDITY PERIOD',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
            SizedBox(
              width: (actualCardWidth / 14) * 1.1,
              child: Text(
                'OBSERVATIONS',
                style: labelTextStyle700Weight(12, vaccinesColor),
              ),
            ),
          ],
        ),
        verticalSpace(),
        Container(
          height: size.height * 0.5,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                  20,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: (actualCardWidth / 14) * 0.5,
                                child: Text(
                                  '${index + 1}',
                                  style: labelTextStyle700Weight(
                                      12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 1.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'General Check Up',
                                      style: labelTextStyle700Weight(
                                          12, vaccinesColor),
                                    ),
                                    verticalSpace(height: 5),
                                    Text(
                                      '99214 * CPT',
                                      style: labelTextStyle700Weight(
                                          12, labelTextStyleTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 0.5,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration:
                                          rectangularBgColorBoxDecorationWithRadius(
                                              FIELDS_RADIUS_SMALL),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Center(
                                          child: Text('1',
                                              style: normalLabelTextStyle(
                                                  12, labelTextStyleTextColor)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 0.5,
                                child: Text(
                                  '81.00',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Text(
                                  '81.00',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Text(
                                  '81.00',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Text(
                                  '81.00',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Text(
                                  '81.00',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Text(
                                  'Long reason',
                                  style:
                                      normalLabelTextStyle(12, vaccinesColor),
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14),
                                child: Row(
                                  children: [
                                    Container(
                                      width: (actualCardWidth / 14) - 5,
                                      decoration:
                                          rectangularBgColorBoxDecorationWithRadius(
                                              4),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: HorizontalTextAndIcon(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 1.5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: ((actualCardWidth / 14) * 1.5) - 5,
                                      decoration:
                                          rectangularBgColorBoxDecorationWithRadius(
                                              4),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: HorizontalTextAndIcon(
                                          text: '10-10-2018 15:30',
                                          assetUrl:
                                              'assets/images/ic_calendar.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: actualCardWidth / 14,
                                child: Row(
                                  children: [
                                    Container(
                                      width: (actualCardWidth / 14) - 5,
                                      decoration:
                                          rectangularBgColorBoxDecorationWithRadius(
                                              FIELDS_RADIUS_SMALL),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Center(
                                          child: Text('878787',
                                              style: normalLabelTextStyle(
                                                  12, labelTextStyleTextColor)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 1.5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: ((actualCardWidth / 14) * 1.5) - 5,
                                      decoration:
                                          rectangularBgColorBoxDecorationWithRadius(
                                              4),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: HorizontalTextAndIcon(
                                          text: '10-10-2018 15:30',
                                          assetUrl:
                                              'assets/images/ic_calendar.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (actualCardWidth / 14) * 1.1,
                                child: Text(
                                  'Add observation',
                                  style: labelTextStyle700Weight(
                                      12, normalBtnTextColor),
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(),
                          Container(
                            decoration: appSeparationLineDecoration,
                            height: 0.7,
                          ),
                          verticalSpace(),
                        ],
                      )),
            ),
          ),
        )
      ],
    );
  }
}
