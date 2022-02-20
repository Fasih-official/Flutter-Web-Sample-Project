import 'package:assessment_app/utils/styles.dart';
import 'package:assessment_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';
import 'colors.dart';
import 'decorations.dart';
import 'dimens.dart';

class MyScaffold extends StatelessWidget {
  final Widget? body, drawer, bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  final Key? scaffoldKey;

  MyScaffold({
    Key? key,
    this.body,
    this.drawer,
    this.appBar,
    this.bottomNavigationBar,
    this.backgroundColor = Colors.grey,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: true,
    );
  }
}

// class CircularAvatar extends StatelessWidget {
//   final String imagePath;
//   final double imageSize, imageWidth, imageHeight;
//
//   const CircularAvatar({
//     Key? key,
//     required this.imagePath,
//     required this.imageSize,
//     this.imageWidth = 0.0,
//     this.imageHeight = 0.0,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: (imageWidth > 0) ? imageWidth : imageSize,
//       height: (imageHeight > 0) ? imageHeight : imageSize,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(imageSize),
//         child: GenericCachedNetworkImage(
//           imagePath: imagePath,
//         ),
//       ),
//     );
//   }
// }
//
// class GenericCachedNetworkImage extends StatelessWidget {
//   final String imagePath;
//
//   const GenericCachedNetworkImage({Key? key, required this.imagePath})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: imagePath,
//       placeholder: (_, url) => PlaceholderWidget(),
//       errorWidget: (_, url, error) => PlaceholderWidget(),
//       fit: BoxFit.cover,
//     );
//   }
// }

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/ic_placeholder_thumbnail.png',
      fit: BoxFit.cover,
    );
  }
}

class CustomizedButton extends StatelessWidget {
  final String text;
  final String img;
  final double verticalPadding;
  final Color textColor;

  const CustomizedButton(
      {Key? key,
      required this.text,
      this.verticalPadding = 0,
      this.textColor = Colors.white,
      this.img = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isEmpty(img)
                ? Container()
                : Row(
                    children: [
                      Image.asset(
                        img,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
            Text(
              text,
              style: labelTextStyle700Weight(12,textColor),
            ),
          ],
        ),
      ),
    );
  }
}

class GenericProgressBar extends StatelessWidget {
  const GenericProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: orangeColor,
    );
  }
}

class CutomizedTextField extends StatelessWidget {
  String prefixImage, hintText, _phone = "", _password = "";
  bool passwordVisible;
  TextInputType? keyboard;
  TextEditingController? descriptionController;

  final Function(bool)? callbackFocus;

  CutomizedTextField({
    Key? key,
    required this.passwordVisible,
    required this.keyboard,
    this.descriptionController,
    this.prefixImage = "",
    this.hintText = "",
    required this.callbackFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 4,
        child: FocusScope(
          child: Focus(
            onFocusChange: callbackFocus,
            child: TextField(
              controller: descriptionController,
              keyboardType: keyboard,
              obscureText: passwordVisible,
              cursorColor: appBarColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:
                    TextStyle(color: appBarColor, fontWeight: FontWeight.w400),
                hintText: hintText,
                prefixIconConstraints: BoxConstraints(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                      top: 12.0, bottom: 12, left: 30, right: 12),
                  child: Image.asset(
                    prefixImage,
                    height: 16,
                    width: 16,
                  ),
                ),
              ),
              onChanged: (value) {
                _password = value;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class GenericCard extends StatelessWidget {
  GenericCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        elevation: 18,
        shape: const CircleBorder(),
        child: Image.asset(
          'assets/images/ic_circular_logo.png',
          height: 96,
        ));
  }
}

class MyTextField extends StatelessWidget {
  bool obscureText;
  int maxLength, minLines, maxLines;
  TextInputType keyboardType;
  TextAlign textAlign;
  String? hint;
  double verticalPad, horizontalPad;

  MyTextField({
    Key? key,
    this.obscureText = false,
    this.maxLength = 80,
    this.minLines = 1,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.hint,
    this.verticalPad = 0.0,
    this.horizontalPad = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: densedFieldDecorationWithoutPadding(
          hint: hint,
          verticalPad: verticalPad,
          horizontalPad: horizontalPad,
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        textAlign: textAlign,
        maxLength: maxLength,
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}

class FadeIndexedStack extends StatefulWidget {
  final int index;
  final List<Widget> children;
  final Duration duration;

  const FadeIndexedStack({
    Key? key,
    required this.index,
    required this.children,
    this.duration = const Duration(
      milliseconds: 800,
    ),
  }) : super(key: key);

  @override
  _FadeIndexedStackState createState() => _FadeIndexedStackState();
}

class _FadeIndexedStackState extends State<FadeIndexedStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void didUpdateWidget(FadeIndexedStack oldWidget) {
    if (widget.index != oldWidget.index) {
      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: IndexedStack(
        index: widget.index,
        children: widget.children,
      ),
    );
  }
}

class HideScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyBackButton extends StatelessWidget {
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Image.asset(
          'assets/icon_back.png',
          height: 16,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class IconAndText extends StatelessWidget {
  final String iconUrl, text;

  const IconAndText({
    Key? key,
    this.iconUrl = 'assets/images/ic_badge.png',
    this.text = 'Dashboard',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconUrl,
          height: 20,
        ),
        verticalSpace(height: 5),
        Text(
          text,
          style: normalLabelTextStyle(12, labelTextStyleTextColor),
        )
      ],
    );
  }
}

class NameAndValue extends StatelessWidget {
  final String name, value;
  final Color nameColor, valueColor;

  const NameAndValue({
    Key? key,
    this.name = 'Patient',
    this.value = 'Arely Caldwell',
    this.nameColor = labelTextStyleTextColor,
    this.valueColor = regularTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: normalLabelTextStyle(12, nameColor),
        ),
        horizontalSpace(),
        Text(
          value,
          style: (valueColor == regularTextColor)
              ? normalLabelTextStyle(12, valueColor)
              : boldLabelTextStyle(12, valueColor),
        ),
      ],
    );
  }
}

class FieldAndText extends StatelessWidget {
  int maxLength, minLines, maxLines;
  final int fieldDivisionRatio;
  final String text, hint;
  final bool isManadatory;

  FieldAndText({
    Key? key,
    this.fieldDivisionRatio = 0,
    this.text = 'Policy Number',
    this.isManadatory = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength = 80,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text,
                style: labelTextStyle700Weight(12, labelTextStyleTextColor),
              ),
              TextSpan(
                  text: isManadatory ? '*' : '',
                  style:
                      labelTextStyle700Weight(12, defaultValidationTextColor)),
            ],
          ),
        ),
        verticalSpace(height: 5),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: rectangularBgColorBoxDecorationWithRadius(8),
                child: MyTextField(
                  verticalPad: 16,
                  horizontalPad: 10,
                  hint: hint,
                  minLines: minLines,
                  maxLines: maxLines,
                  maxLength: maxLength,
                ),
              ),
            ),
            Expanded(
              flex: fieldDivisionRatio,
              child: SizedBox(),
            )
          ],
        ),
      ],
    );
  }
}

class HorizontalTextAndIcon extends StatelessWidget {
  final String text, assetUrl;
  final bool normalText;
  final Color textColor;

  const HorizontalTextAndIcon({
    Key? key,
    this.text = 'Included',
    this.assetUrl = 'assets/images/ic_arrow_dropdown.png',
    this.normalText = true,
    this.textColor = labelTextStyleTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: normalText
                ? normalLabelTextStyle(12, textColor)
                : labelTextStyle700Weight(12, textColor),
          ),
        ),
        horizontalSpace(width: 5),
        Image.asset(
          assetUrl,
          height: 12,
          width: 12,
        )
      ],
    );
  }
}

class CircleIconAndText extends StatelessWidget {
  final String assetURL, name;

  const CircleIconAndText({
    Key? key,
    this.assetURL = 'assets/images/ic_tick.png',
    this.name = 'Mark as\nReviewed',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: rectangularBgColorBoxDecorationWithRadius(56),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(56),
            child: Center(
                child: Image.asset(
              assetURL,
              width: 16,
              height: 16,
            )),
          ),
        ),
        verticalSpace(height: 5),
        Text(
          name,
          style: normalLabelTextStyle(12, labelTextStyleTextColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
