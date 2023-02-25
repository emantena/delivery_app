import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, 'explore');
                },
                icon: const Icon(Icons.close),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(top: 15),
                          child: headerText(
                            text: "Search",
                            color: AppColor.primary,
                            fontSize: 30,
                          ),
                        ),
                        _searchInput(),
                        const SizedBox(
                          height: 25,
                        ),
                        _popular(context),
                        const SizedBox(
                          height: 25,
                        ),
                        _recomend(context),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchInput() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 20),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(
        //   color: const Color.fromRGBO(234, 236, 239, 1),
        // ),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 10),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.disabledColor,
          ),
        ),
      ),
    );
  }

  Widget _popular(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: headerText(
                text: "Recent search",
                color: AppColor.primary,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'Clear all',
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        _popularSlider(),
      ],
    );
  }

  Widget _popularSlider() {
    final images = [
      "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=449&q=80",
      "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
    ];

    return SizedBox(
      height: 176,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: ((context, index) {
          return _popularCard(context, images[index]);
        }),
      ),
    );
  }

  Widget _popularCard(BuildContext context, String image) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 200,
              height: 120,
              fit: BoxFit.cover,
              image: NetworkImage(image),
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
            ],
          )
        ],
      ),
    );
  }

  Widget _recomend(BuildContext context) {
    final images = [
      "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1554298128-c916518a4b34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80",
      "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
    ];
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: headerText(
                text: "Recommend for you",
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
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            _restaurantCard(images[0]),
            _restaurantCard(images[1]),
            _restaurantCard(images[2]),
          ],
        )
      ],
    );
  }

  Widget _restaurantCard(String imageUrl) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    width: 95,
                    height: 100,
                    image: NetworkImage(imageUrl),
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
}
