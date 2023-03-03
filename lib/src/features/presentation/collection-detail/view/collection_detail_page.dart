import 'package:flutter/material.dart';
import 'package:delivery_app/src/features/presentation/widgets/back_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/restaurant_card.dart';

import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        text: "Asia \n Restaurant",
                        color: Colors.white,
                        fontSize: 35,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context: context, color: Colors.white);
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: headerText(
                      text: '128 places',
                      color: const Color.fromRGBO(51, 58, 77, 1.8),
                      fontSize: 17,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  children: [
                    restaurantCard(
                      context: context,
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1432139509613-5c4255815697"),
                      title: "Restaurant name",
                      subtitle: "some text",
                      review: "",
                      ratings: "(235 ratings)",
                      buttonText: "Delivered",
                    ),
                    restaurantCard(
                      context: context,
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1432139509613-5c4255815697"),
                      title: "Restaurant name",
                      subtitle: "some text",
                      review: "",
                      ratings: "(235 ratings)",
                      buttonText: "Delivered",
                      isFavourite: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
