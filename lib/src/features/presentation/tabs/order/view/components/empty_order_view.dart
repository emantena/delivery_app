import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgGreyPage,
      appBar: AppBar(
        elevation: 0.5,
        leading: const Text(''),
        backgroundColor: AppColor.white,
        title: headerText(
          text: 'My Order',
          color: AppColor.primary,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 216,
              height: 216,
              image: AssetImage('assets/emptyOrder.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: headerText(
                text: 'Cart Empty',
                color: AppColor.grey,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: headerText(
                text: 'Good food is always cooking! Go ahead, order some yummy items from the menu.',
                textAlign: TextAlign.center,
                color: AppColor.grey,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
