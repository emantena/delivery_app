import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/cards/populares_card.dart';
import 'package:delivery_app/src/features/presentation/widgets/cards/vertical_card.dart';
import 'package:delivery_app/src/features/presentation/widgets/headers/header_double.dart';
import 'package:delivery_app/src/features/presentation/widgets/headers/header_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                        text: 'Search',
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                    _searchInput(context),
                    const SizedBox(height: 40.0),
                    headerDoubleText(
                      textHeader: 'Recent search',
                      textAction: 'Clear All',
                    ),
                    _sliderRecentSearch(),
                    const SizedBox(height: 20.0),
                    headerDoubleText(
                      textHeader: 'Recommend for you',
                      textAction: '',
                    ),
                    const SizedBox(height: 20.0),
                    popularCard(
                        context: context,
                        image: const NetworkImage(
                            'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy's Diner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        hasActionButton: false),
                    popularCard(
                        context: context,
                        image: const NetworkImage(
                            'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy's Diner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        hasActionButton: false),
                    popularCard(
                      context: context,
                      image: const NetworkImage(
                          'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      hasActionButton: false,
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: const EdgeInsets.only(top: 20.0),
    padding: const EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(
        20.0,
      ),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 5.0),
        prefixIcon: Icon(Icons.search, color: AppColor.grey),
        hintText: 'Search',
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: const EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return cardVertical(
          context: context,
          width: 160.0,
          height: 120.0,
          title: "Andy & Cindy's Diner",
          subtitle: "87 Botsford Circle Apt",
          image: const NetworkImage(
              'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
        );
      },
    ),
  );
}
