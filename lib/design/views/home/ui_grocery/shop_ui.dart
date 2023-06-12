import 'package:flutter/material.dart';

const background = Color.fromRGBO(244, 242, 237, 1);
const blur = Color.fromRGBO(255, 255, 255, 1);

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blur,
      body: SafeArea(
        top: false,
        bottom: false,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: blur,
              elevation: 10,
              expandedHeight: 300,
              title: Text("Gorcery shop "),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15.0),
              sliver: SliverGrid.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shadowColor: const Color.fromARGB(255, 240, 243, 244),
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(
                                252,
                                252,
                                252,
                                1,
                              ),
                              Color.fromRGBO(
                                249,
                                249,
                                249,
                                1,
                              ),
                              Color.fromRGBO(
                                245,
                                245,
                                245,
                                1,
                              ),
                              Color.fromRGBO(
                                235,
                                240,
                                240,
                                1,
                              ),
                              Color.fromRGBO(
                                230,
                                233,
                                234,
                                1,
                              ),
                            ],
                            end: Alignment.topCenter,
                            begin: Alignment.center,
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: ClipRRect(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/huile-de-cuisson.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Huile de Cuisson",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "1 Kg ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(color: Colors.grey),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "5.0 DT ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(15)),
                                        ),
                                        color: const Color.fromARGB(
                                            255, 135, 214, 144),
                                        child: const Center(
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 10,
          right: 0,
          left: 0,
          bottom: 0,
          child: ClipPath(
            clipper: ShapeCard(),
            child: const AspectRatio(
              aspectRatio: 0.9,
              child: Card(
                elevation: 0,
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/viande-volaille-poisson.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                  child: Text(
                    "nom product",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 Kg ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Expanded(
                              child: Text(
                                "5.0 DT ",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.add_circle_outline_outlined)),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ShapeCard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height * 0.75)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 10)
      ..quadraticBezierTo(
          size.width - 20, -10, size.width * 0.1, size.height * 0.6)
      ..lineTo(size.width * 0.1, size.height * 0.6)
      ..quadraticBezierTo(0, size.height * 0.7, 5, size.height * 0.7)
      ..lineTo(0, size.height * 0.75);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
