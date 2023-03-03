import 'package:flutter/material.dart';

import '../../../colors/app_color.dart';
import 'header_text.dart';

Widget restaurantCard(
    {required BuildContext context,
    double marginTop = 0,
    double marginRight = 0,
    double marginBottom = 0,
    double marginLeft = 10,
    required ImageProvider image,
    required String title,
    required String subtitle,
    required String review,
    required String ratings,
    String buttonText = '',
    bool hasActionButton = false,
    bool isFavourite = false}) {
  return Container(
    padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
    margin: EdgeInsets.only(
      top: 15,
      bottom: marginBottom,
      left: marginLeft,
      right: marginRight,
    ),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1),
          offset: Offset(0, 5),
          blurRadius: 10,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.cover,
              width: 95,
              height: 100,
              image: image,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  headerText(
                    text: title,
                    color: AppColor.primary,
                    fontSize: 18,
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35,
                        color:
                            isFavourite ? AppColor.red : AppColor.disabledColor,
                      ))
                ],
              ),
              Text(
                subtitle,
                style: TextStyle(color: AppColor.disabledColor, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.secondary,
                    size: 16,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    ratings,
                    style: TextStyle(
                      color: AppColor.disabledColor,
                      fontSize: 13,
                    ),
                  ),
                  Container(
                    width: 111,
                    height: 18,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0.5),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(AppColor.secondary),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
