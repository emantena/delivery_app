import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/back_buttons/back_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(
              text: 'Collections',
              fontSize: 17,
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context: context, color: Colors.black);
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 20.0,
            ),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'collection-detail');
    },
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
            width: 165,
            height: 190,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
        Container(
          width: 165,
          height: 190,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 35, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                text: 'Asia',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              headerText(
                text: '128 places',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
