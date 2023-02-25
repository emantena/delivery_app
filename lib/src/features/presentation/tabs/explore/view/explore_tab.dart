import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';
import 'package:delivery_app/src/features/presentation/widgets/list_restaurant.dart';

import 'package:delivery_app/src/colors/app_color.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  ExploreTabState createState() => ExploreTabState();
}

class ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _topBar(context),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: headerText(
                    text: "Discovery new places",
                    color: AppColor.primary,
                    fontSize: 32,
                  ),
                ),
                Container(
                  child: _sliderCard(),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: listRestaurants(
                    context: context,
                    textHeader: "Popular this week",
                    gestureDetector: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Show all',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Icon(Icons.play_arrow),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: _sliderCollection(),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _topBar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'search-page');
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 310,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(234, 236, 239, 1),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColor.disabledColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Search',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(209, 209, 214, 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _sliderCard() {
    return SizedBox(
      height: 325,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: ((context, index) {
          return _card(context);
        }),
      ),
    );
  }

  Widget _card(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              width: 200,
              height: 250,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/delivery-app-4c9cb.appspot.com/o/photo-1565299585323-38d6b0865b47%20(1).jpeg?alt=media&token=7b15b760-b60e-46e2-b370-57b30dc05403"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Store Name Here",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "some texte here",
                  style: TextStyle(
                    color: AppColor.disabledColor,
                  ),
                ),
              ),
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
                    width: 80,
                    height: 18,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0.5),
                        backgroundColor: MaterialStatePropertyAll<Color>(AppColor.secondary),
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
          )
        ],
      ),
    );
  }

  Widget _sliderCollection() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: headerText(
                text: "Collection",
                color: AppColor.primary,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.play_arrow),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 25),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return _cardCollection(context);
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardCollection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(
          width: 350,
          height: 217.59,
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://firebasestorage.googleapis.com/v0/b/delivery-app-4c9cb.appspot.com/o/photo-1551024506-0bccd828d307%20(1).jpeg?alt=media&token=deb8f4d1-2285-4bc0-83ca-edf56c4d80ae"),
        ),
      ),
    );
  }
}
