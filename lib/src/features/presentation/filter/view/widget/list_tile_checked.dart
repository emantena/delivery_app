import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
// Colors
import 'package:delivery_app/src/colors/app_color.dart';
// Commons Widgets

@immutable
class ListTileCheck extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function()? func;

  const ListTileCheck({
    Key? key,
    required this.texto,
    required this.isActive,
    required this.func,
  }) : super(key: key);

  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
          context: context,
          text: widget.texto,
          isActive: widget.isActive,
          func: widget.func,
        ),
      ],
    );
  }
}

Widget listTiles({
  required BuildContext context,
  String text = "",
  bool isActive = false,
  Function()? func,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Theme.of(context).dividerColor),
      ),
    ),
    child: ListTile(
      onTap: func,
      title: headerText(
        text: text,
        color: isActive ? AppColor.orange : Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? AppColor.orange : AppColor.grey,
            )
          : const Text(''),
    ),
  );
}
