import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselCards extends StatelessWidget {
  const CarouselCards({
    Key? key,
    required this.carouselIndex,
    required this.item,
    required this.carouselController,
  }) : super(key: key);

  final int? carouselIndex;
  final List<String> item;
  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          carouselIndex == 0
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Super Sale\n ',
                        style: GoogleFonts.nunitoSans(fontSize: 30),
                        children: [
                          const TextSpan(text: 'Discount \n '),
                          const TextSpan(text: 'up to'),
                          TextSpan(
                            text: ' 60%',
                            style: GoogleFonts.nunitoSans(fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.white),
                      child: Text(
                        'Explore now',
                        style: GoogleFonts.nunitoSans(color: Colors.black),
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
          const Spacer(),
          carouselIndex != item.length - 1
              ? Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(.5)),
                  child: IconButton(
                      onPressed: () {
                        carouselController.nextPage();
                      },
                      icon: const Icon(Icons.skip_next)),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
