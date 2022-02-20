import 'dart:io';

import 'package:assessment_app/blocs/base_bloc.dart';
import 'package:assessment_app/utils/utils.dart';
import 'package:assessment_app/utils/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';

import '../../utils/decorations.dart';

class ImageObservation extends StatelessWidget {
  const ImageObservation({Key? key}) : super(key: key);

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
          'ADD FILE',
          style: labelTextStyle700Weight(12, vaccinesColor),
        ),
        verticalSpace(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Container(
            decoration: rectangularWhiteBoxDecorationWithRadiusElevation(12, 1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ic_attach_files.png',
                    height: 56,
                  ),
                  verticalSpace(),
                  Text(
                    'Drop File Here or Use Browse Button',
                    style: labelTextStyle700Weight(12, labelTextStyleTextColor),
                  ),
                  verticalSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkResponse(
                        onTap: () async {
                          var map = await onTapBrowse();
                          if(map['status'] as bool){
                            var baseBloc = BlocProvider.of<BaseBloc>(context);
                            baseBloc.add(UIEventFilePicker(map: map));
                          }
                        },
                        child: Container(
                          decoration:
                              rectangularNormalBtnTextColorBoxDecorationWithRadiusElevation(
                                  20, 2),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: CustomizedButton(
                              text: 'Browse',
                              verticalPadding: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        verticalSpace(),
        BlocConsumer<BaseBloc, BaseState>(
          listener: (_, state) {},
          buildWhen: (prevState, curState) {
            if (curState is UIStateFilePicker) {
              return true;
            }
            return false;
          },
          builder: (_, state) => (state is UIStateFilePicker)
              ? (state.map.isNotEmpty)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        decoration:
                            rectangularWhiteBoxDecorationWithRadiusElevation(
                                12, 1),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${state.map['name']}',
                                style: labelTextStyle700Weight(
                                    12, normalBtnTextColor),
                              ),
                              verticalSpace(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
                                    style: labelTextStyle700Weight(
                                        12, labelTextStyleTextColor,
                                        overflow: null),
                                  )),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/ic_edit.png',
                                        height: 16,
                                      ),
                                      horizontalSpace(),
                                      InkResponse(
                                        onTap: () {
                                          var baseBloc =
                                              BlocProvider.of<BaseBloc>(
                                                  context);
                                          baseBloc
                                              .add(UIEventFilePicker(map: {}));
                                        },
                                        child: Image.asset(
                                          'assets/images/ic_bin.png',
                                          height: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              verticalSpace(height: 5),
                              Text(
                                'Text',
                                style: labelTextStyle700Weight(
                                    12, labelTextStyleTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container()
              : Container(),
        ),
        verticalSpace(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Row(
            children: [
              Container(
                decoration:
                    rectangularBgColorBoxDecorationWithRadiusElevation(20, 2),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomizedButton(
                    text: 'Done',
                    verticalPadding: 10,
                    textColor: normalBtnTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(),
      ],
    );
  }

  Future<Map<String, dynamic>> onTapBrowse() async {
    Map<String, dynamic> fileMap = {};
    var allowedExtensions = ['jpg', 'jpeg', 'png', 'pdf', 'mp4', 'mp3'];

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: allowedExtensions,
      type: FileType.custom,
    );

    if (isNotEmpty(result)) {
      var Uint8List = result!.files.single.bytes;
      if (isNotEmpty(Uint8List)) {
        fileMap = {
          'Uint8List': Uint8List,
          'name': result.names.single ?? '',
          'status':true
        };
        return fileMap;
      }else{
        fileMap = {
          'status':false
        };
      }
    } else {
      fileMap = {
        'status':false
      };
    }
    return fileMap;
  }
}
