import 'package:flutter/material.dart';

import 'header_text.dart';
import '../../../colors/app_color.dart';

Widget listRestaurants({
  required BuildContext context,
  required String textHeader,
  required GestureDetector gestureDetector,
}) {
  return Column(
    children: [
      _header(textHeader, gestureDetector),
      _restaurants(context),
    ],
  );
}

Widget _header(String textHeader, GestureDetector gestureDetector) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(
          text: textHeader,
          color: AppColor.primary,
          fontSize: 20,
        ),
      ),
      const Spacer(),
      gestureDetector,
    ],
  );
}

Widget _restaurants(BuildContext context) {
  return Column(
    children: [
      _restaurantCard(context),
      _restaurantCard(context),
    ],
  );
}

Widget _restaurantCard(BuildContext context) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 242, 242, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  fit: BoxFit.cover,
                  width: 95,
                  height: 100,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1432139509613-5c4255815697"),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerText(
                  text: "Restaurant name",
                  color: AppColor.primary,
                  fontSize: 18,
                ),
                Text(
                  "some text",
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
                      "(235 ratings)",
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
                          elevation:
                              const MaterialStatePropertyAll<double>(0.5),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              AppColor.secondary),
                        ),
                        child: const Text(
                          "Delivered",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
