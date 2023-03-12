import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:delivery_app/src/utils/Styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
// Colors

Widget favouritesCard({
  required BuildContext context,
  double marginTop = 15.0,
  double marginRight = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 0.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  String buttonText = '',
  required bool hasActionButton,
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBottom,
      left: marginLeft,
    ),
    padding: const EdgeInsets.only(
      left: 20,
      top: 20,
      bottom: 20,
    ),
    width: double.infinity,
    decoration: createBoxDecorationWithShadows(),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 90.0,
            height: 90.0,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText(
                      text: title,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      size: 35.0,
                      color: isFavourite ? AppColor.pink : Colors.grey[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: headerText(
                  text: subtitle,
                  color: AppColor.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.yellow,
                    size: 16,
                  ),
                  headerText(
                    text: review,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                  headerText(
                    text: ratings,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
