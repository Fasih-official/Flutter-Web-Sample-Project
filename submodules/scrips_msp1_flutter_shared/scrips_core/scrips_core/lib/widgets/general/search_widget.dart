import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/constants/app_assets.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';
import 'package:scrips_shared_features/di/dependency_injection.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({
    Key key,
    this.groupName,
    this.onSelected,
  }) : super(key: key);
  final String groupName;
  final Function onSelected;

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textEditingController;

  @override
  void dispose() async {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: TextFormField(),
                  ),
                  Positioned(
                    left: 4,
                    top: 0,
                    bottom: 0,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            height: 24,
                            width: 24,
                            child: Images.instance.searchIcon()),
                        Padding(
                          padding: EdgeInsets.only(left: 6),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
