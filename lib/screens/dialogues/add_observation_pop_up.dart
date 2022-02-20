import 'package:assessment_app/utils/utils.dart';
import 'package:assessment_app/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/decorations.dart';

class AddObservationPopup extends StatelessWidget {
  final Function(String selectedObservation)? selectedItem;

  const AddObservationPopup({
    Key? key,
    this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      decoration: rectangularWhiteBoxDecorationOffWithRadiusElevation(12, 1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkResponse(
            onTap: () {
              if(isNotEmpty(selectedItem)){
                selectedItem!('observation_text');
                pop(context);
              }
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: HorizontalTextAndIcon(
                    text: 'Add Text',
                    assetUrl: 'assets/images/ic_choose_text.png',
                  ),
                ),
                Container(
                  decoration: appSeparationDarkLineDecoration,
                  height: 0.7,
                ),
              ],
            ),
          ),
          InkResponse(
            onTap: () {
              if(isNotEmpty(selectedItem)){
                selectedItem!('observation_result');
                pop(context);
              }
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: HorizontalTextAndIcon(
                    text: 'Add Result',
                    assetUrl: 'assets/images/ic_choose_text.png',
                  ),
                ),
                Container(
                  decoration: appSeparationDarkLineDecoration,
                  height: 0.7,
                ),
              ],
            ),
          ),
          InkResponse(
            onTap: () {
              if(isNotEmpty(selectedItem)){
                selectedItem!('observation_file');
                pop(context);
              }
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: HorizontalTextAndIcon(
                    text: 'Add File',
                    assetUrl: 'assets/images/ic_attachment.png',
                  ),
                ),
                Container(
                  decoration: appSeparationDarkLineDecoration,
                  height: 0.7,
                ),
              ],
            ),
          ),
          InkResponse(
            onTap: () {
              if(isNotEmpty(selectedItem)){
                selectedItem!('observation_dental');
                pop(context);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: HorizontalTextAndIcon(
                text: 'Add Universal Dental',
                assetUrl: 'assets/images/ic_choose_text.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  pop(BuildContext context){
    Navigator.pop(context);
  }
}
