import 'package:delivery_app/src/features/presentation/widgets/back_button.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: headerText(
              text: "Collections",
              color: AppColor.primary,
              fontSize: 17,
            ),
            leading: backButton(
              context: context,
              color: Colors.black,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              children: [
                _card(
                  context,
                  "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "Asia",
                  "128 places",
                ),
                _card(
                  context,
                  "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "Asia",
                  "128 places",
                ),
                _card(
                  context,
                  "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "Asia",
                  "128 places",
                ),
                _card(
                  context,
                  "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "Asia",
                  "128 places",
                ),
                _card(
                  context,
                  "https://images.unsplash.com/photo-1574164052277-b9ea797de8e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "Asia",
                  "128 places",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(
      BuildContext context, String imageUrl, String category, String places) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'collection-detail');
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                headerText(text: category, color: Colors.white, fontSize: 18),
                headerText(
                  text: places,
                  color: Colors.white,
                  fontSize: 15,
                  weight: FontWeight.w500,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
