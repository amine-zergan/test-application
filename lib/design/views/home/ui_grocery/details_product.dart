// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/design/views/home/ui_grocery/category_view.dart';

class CurasolSlider {
  final int id;
  final String images;
  const CurasolSlider({
    required this.id,
    required this.images,
  });
}

List<CurasolSlider> data = [
  const CurasolSlider(
    id: 1,
    images: "assets/huilde-de-cuisson.png",
  ),
  const CurasolSlider(
    id: 2,
    images: "assets/huilde-de-cuisson.png",
  ),
  const CurasolSlider(
    id: 1,
    images: "assets/huilde-de-cuisson.png",
  ),
];

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late PageController controller;
  int selectItem = 0;
  bool isfavorite = false;
  int quantity = 1;
  bool seeMore = false;
  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      floatingActionButton: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CategoryPage(),
            ),
          );
        },
        minWidth: size.width * 0.9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        color: const Color.fromARGB(188, 80, 167, 83),
        padding: const EdgeInsets.symmetric(
          vertical: 13,
        ),
        child: Text(
          "Ajouter Au panier",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.36,
            backgroundColor: const Color.fromRGBO(242, 243, 242, 1),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20,
                    sigmaY: 20,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView.builder(
                        itemCount: data.length,
                        controller: controller,
                        onPageChanged: (value) {
                          setState(() {
                            selectItem = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                width: size.width * 0.6,
                                top: size.height * 0.1,
                                child: Image.asset(
                                  "assets/huile-de-cuisson.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Positioned(
                        top: size.height * 0.38,
                        child: AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          curve: Curves.easeIn,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              data.length,
                              (index) => AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 300,
                                ),
                                curve: Curves.easeIn,
                                width: selectItem == index ? 15 : 5,
                                height: 3,
                                margin: const EdgeInsets.only(
                                  right: 2,
                                ),
                                decoration: BoxDecoration(
                                    color: selectItem == index
                                        ? Colors.green.shade300
                                        : Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.logout_outlined,
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Huile D'olive",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isfavorite = !isfavorite;
                      });
                    },
                    icon: isfavorite
                        ? Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.grey.shade500,
                            size: 28,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Colors.green.shade300,
                            size: 28,
                          ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: size.height * 0.08,
              padding: const EdgeInsets.only(
                left: 15,
                right: 30,
              ),
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 20,
                          ),
                        ),
                        Text(
                          "$quantity",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "5DT",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            sliver: SliverToBoxAdapter(
              child: Text(
                """
 Olive oil is a liquid fat obtained by pressing whole olives, the fruit of Olea europaea, a traditional tree crop of the Mediterranean Basin, and extracting the oil.
It is commonly used in cooking, for frying foods or as a salad dressing. It can also be found in some cosmetics, pharmaceuticals, soaps, and fuels for traditional oil lamps. It also has additional uses in some religions. The olive is one of three core food plants in Mediterranean cuisine, together with wheat and grapes. Olive trees have been grown around the Mediterranean since the 8th millennium BC.
Spain is the world's largest producer, manufacturing almost half of the world's olive oil. Other large producers are Italy, Greece, Tunisia, Turkey and Morocco.
""",
                maxLines: 9,
              ),
            ),
          )
        ],
      ),
    );
  }
}
