import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/features/Home/view/widgets/carouselcard.dart';
import 'package:flutterwebtutorial/features/Home/view/widgets/fashionsearchbar.dart';
import 'package:flutterwebtutorial/features/detailedpagr.dart';
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
        body: Column(
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
              height: 200,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: item.length,
                    carouselController: carouselController,
                    itemBuilder: (context, index, pageIndex) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24)),
                        margin: const EdgeInsets.only(right: 10),
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
                      viewportFraction: .9,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      reverse: false,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
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
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const FashionDetailedPage())));
                    },
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
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                image:
                                    AssetImage('assets/image/fashionhome1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'GUICIE long Sleeve Woman and Girls',
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Women Clothing',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 9, fontWeight: FontWeight.w400),
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
                  ),
                  ElevatedButton(
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
                            // padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                image:
                                    AssetImage('assets/image/fashionhome3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'GUICIE long Sleeve Woman and Girls',
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Women Clothing',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 9, fontWeight: FontWeight.w400),
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
                  ),
                  ElevatedButton(
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
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                image:
                                    AssetImage('assets/image/fashionhome2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'GUICIE long Sleeve Woman and Girls',
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Women Clothing',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 9, fontWeight: FontWeight.w400),
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
                  ),
                  ElevatedButton(
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
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                image:
                                    AssetImage('assets/image/fashionhome4.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'GUICIE long Sleeve Woman and Girls',
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Women Clothing',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 9, fontWeight: FontWeight.w400),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
