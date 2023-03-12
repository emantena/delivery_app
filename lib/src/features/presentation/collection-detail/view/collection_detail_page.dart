import 'package:delivery_app/src/features/presentation/widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Cards/favourites_card.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: AppColor.orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')),
                  Container(
                    // color: const Color.fromRGBO(0, 0, 0, 1.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        text: 'Asia \n Restaurant',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context: context, color: Colors.white);
            }),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: headerText(
                          text: '128 places',
                          color: const Color.fromRGBO(51, 58, 77, 1.0),
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Column(
                        children: [
                          favouritesCard(
                              context: context,
                              image: const NetworkImage(
                                  'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                              title: "Andy & Cindy's Diners",
                              subtitle: "87 Botsford Circle Apt",
                              review: "4.8",
                              ratings: "(233 ratings)",
                              buttonText: 'Delivery',
                              hasActionButton: true,
                              isFavourite: true),
                          favouritesCard(
                            context: context,
                            image: const NetworkImage(
                                'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavourite: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
