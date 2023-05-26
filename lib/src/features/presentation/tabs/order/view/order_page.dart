import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/tabs/order/view/components/empty_order_view.dart';
import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgGreyPage,
      body: emptyOrderState
          ? const EmptyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
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
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            _orders(context),
                            const SizedBox(height: 40),
                            _checkoutResume(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _orders(BuildContext context) {
    return Column(
      children: [_cardOrder(context)],
    );
  }

  Widget _cardOrder(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            spreadRadius: 1.0,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              _cardOrderTopContent(context),
            ],
          ),
          Column(
            children: [
              _items(context),
              _items(context),
              _items(context),
              _items(context),
            ],
          ),
          _moreContent(context)
        ],
      ),
    );
  }

  Widget _cardOrderTopContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
            child: headerText(
              text: "Little Creatures - Club Street",
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: AppColor.grey,
                size: 16.0,
              ),
              headerText(
                text: "87 Botsford Circle Apt",
                color: AppColor.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: 110.0,
                height: 20.0,
                child: createButton(
                  context: context,
                  buttonColor: AppColor.orange,
                  labelButton: 'Free Delivery',
                  labelFontSize: 11.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _items(context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
              text: 'Special Gajananad Bhel',
              color: AppColor.orange,
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
            ),
            headerText(
              text: 'Mixed vegetables, Chicken Egg',
              color: AppColor.grey,
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
            ),
          ],
        ),
        trailing: headerText(
          text: '17.20 €',
          color: AppColor.grey,
          fontWeight: FontWeight.w300,
          fontSize: 15.0,
        ),
      ),
    );
  }

  Widget _moreContent(context) {
    return ListTile(
      title: headerText(
        text: 'Add more items',
        color: AppColor.pink,
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
      ),
    );
  }

  Widget _checkoutResume(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            spreadRadius: 1.0,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        children: [
          _itemsCheckOutResume(title: 'Subtotal', value: '93.40 €', context: context),
          _itemsCheckOutResume(title: 'Tax & Fee', value: '3.00 €', context: context),
          _itemsCheckOutResume(title: 'Delivery', value: 'Free', context: context),
          _buttonCheckout(context)
        ],
      ),
    );
  }

  Widget _itemsCheckOutResume({
    required String title,
    required String value,
    required BuildContext context,
  }) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: ListTile(
          title: headerText(text: title, fontWeight: FontWeight.w400, fontSize: 15.0),
          trailing: headerText(text: value, fontWeight: FontWeight.w500, fontSize: 15.0),
        ));
  }

  Widget _buttonCheckout(context) {
    return Container(
      width: double.infinity,
      height: 45.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          backgroundColor: AppColor.orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: headerText(
                text: 'Pedir',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColor.white,
              ),
            ),
            Container(
              child: headerText(
                text: '95.49 €',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColor.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
