import 'package:delivery_app/src/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatefulWidget {
  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              _topBar(context),
              Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Discovery new places',
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              _sliderCard(),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _topBar(BuildContext context) {
    return Row(
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
    );
  }

  Widget _sliderCard() {
    return SizedBox(
      height: 360,
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _card(context);
            },
          );
        },
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
              image: NetworkImage("https://images.unsplash.com/photo-1565299585323-38d6b0865b47"),
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
}
