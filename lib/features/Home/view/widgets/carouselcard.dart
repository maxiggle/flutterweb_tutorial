import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/responsive/responsive_value.dart';
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
      height: ResponsiveValue<double>(
        small: 300,
        medium: 600,
        large: MediaQuery.of(context).size.height * .5,
      ).getValue(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child:
                carouselIndex == 0 ? const _Title() : const SizedBox.shrink(),
          ),
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

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final value = const ResponsiveValue<double>(
      small: 30,
      large: 50,
    ).getValue(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            text: 'Super Sale\n ',
            style: GoogleFonts.nunitoSans(fontSize: value),
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
    );
  }
}
