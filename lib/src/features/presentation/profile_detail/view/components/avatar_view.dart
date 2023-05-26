import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/utils/Styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

@immutable
class AvatarView extends StatelessWidget {
  final String backgroundImage;

  const AvatarView({super.key, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createBoxDecorationWithShadows(
            borderRadius: BorderRadius.circular(65),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColor.pink,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.camera_alt,
              color: AppColor.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
