import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/common/domain/usecases/query_params.dart';
import 'package:scrips_core/common/domain/usecases/searchable_use_case.dart';
import 'package:scrips_core/constants/app_icons.dart';
import 'package:scrips_core/ui_helpers/app_colors.dart';
import 'package:scrips_core/ui_helpers/text_styles.dart';

class SearchWithUseCaseWidget extends StatefulWidget {
  SearchWithUseCaseWidget(
      {Key key,
      this.useCase,
      this.onSelected,
      this.text,
      this.placeholder,
      this.showIcon = true,
      this.groupName})
      : super(key: key);

  final SearchableUseCase useCase;
  final String text;
  final String groupName;
  final String placeholder;
  final Function onSelected;
  final bool showIcon;

  @override
  _SearchWithUseCaseWidgetState createState() =>
      _SearchWithUseCaseWidgetState();
}

class _SearchWithUseCaseWidgetState extends State<SearchWithUseCaseWidget> {
  TextEditingController textEditingController;

  @override
  void dispose() async {
    textEditingController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.text);
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
            if (widget.showIcon)
              Row(
                children: <Widget>[
                  SizedBox(
                      height: 24,
                      width: 24,
                      child: ScripsIcons.instance
                          .icon(ScripsIcons.search, color: Color(0xffdadada))),
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                  ),
                ],
              ),
            Expanded(
              child:TextFormField(),
            ),
            if (textEditingController.text != null &&
                textEditingController.text.isNotEmpty)
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 6)),
                  ScripsIcons.instance.iconInkWell(ScripsIcons.cancelled,
                      size: 24, color: Color(0xffdadada), callback: () {
                    textEditingController.clear();
                    widget.onSelected(null);
                  })
                ],
              ),
          ],
        ),
      ),
    );
  }
}
