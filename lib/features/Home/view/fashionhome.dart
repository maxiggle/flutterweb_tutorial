import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/features/Home/view/widgets/carouselcard.dart';
import 'package:flutterwebtutorial/features/Home/view/widgets/fashionsearchbar.dart';
import 'package:flutterwebtutorial/features/detailedpagr.dart';
import 'package:flutterwebtutorial/responsive/responsive_value.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionHome extends StatefulWidget {
  const FashionHome({super.key});

  @override
  State<FashionHome> createState() => _FashionHomeState();
}

class _FashionHomeState extends State<FashionHome> {
  final TextEditingController textEditingController = TextEditingController();
  int? carouselIndex = 0;

  final List<String> item = [
    'assets/image/fashionhome1.jpg',
    'assets/image/fashionhome2.jpg',
    'assets/image/fashionhome3.jpg',
    'assets/image/fashionhome4.jpg',
  ];

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 900,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: RoundedSearchInput(
                            hintText: 'Search your style',
                            textController: textEditingController),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          elevation: 0,
                          backgroundColor: Colors.white),
                      child: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: ResponsiveValue<double>(
                    small: 300,
                    medium: 600,
                    large: MediaQuery.of(context).size.height * .5,
                  ).getValue(context),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CarouselSlider.builder(
                        itemCount: item.length,
                        carouselController: carouselController,
                        itemBuilder: (context, index, pageIndex) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24)),
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image(
                                width: double.infinity - 100,
                                image: AssetImage(item[index]),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        },
                        options: CarouselOptions(
                          aspectRatio: 12 / 6,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              carouselIndex = index;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      CarouselCards(
                          carouselIndex: carouselIndex,
                          item: item,
                          carouselController: carouselController)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      child: Text(
                        'Top Picks',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text('See All',
                          style: GoogleFonts.nunitoSans(
                              fontSize: 13, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: const ResponsiveValue<double>(
                        small: 0.7,
                        large: 1,
                      ).getValue(context),
                    ),
                    itemCount: item.length,
                    itemBuilder: (context, index) {
                      return _CheckoutButton(imagePath: item[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CheckoutButton extends StatelessWidget {
  const _CheckoutButton({required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Container(
              height: const ResponsiveValue<double>(
                small: 155,
                large: 255,
              ).getValue(context),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'GUICIE long Sleeve Woman and Girls',
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w600,
                textStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: const ResponsiveValue<double?>(
                    small: null,
                    large: 16,
                  ).getValue(context),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Women Clothing',
              style: GoogleFonts.nunitoSans(
                fontSize: const ResponsiveValue<double>(
                  small: 9,
                  large: 12,
                ).getValue(context),
                fontWeight: FontWeight.w400,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  '\$ 175.99',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFF5C00)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
