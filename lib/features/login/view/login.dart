import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionHome extends StatefulWidget {
  const FashionHome({super.key});

  @override
  State<FashionHome> createState() => _FashionHomeState();
}

class _FashionHomeState extends State<FashionHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 5.35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const Image(
                          image: AssetImage('assets/image/fashionhome4.jpg'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3.3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: const Image(
                          image: AssetImage('assets/image/fashionhome2.jpg'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: const Image(
                          image: AssetImage('assets/image/fashionhome3.jpg'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Let's Create",
                style: GoogleFonts.libreBaskerville(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.libreBaskerville(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                  text: 'Your ',
                  children: const [
                    TextSpan(
                      text: 'Style',
                      style: TextStyle(
                        color: Color(0xffff5c00),
                      ),
                    ),
                    TextSpan(
                      text: ' With',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Fashionist',
                style: GoogleFonts.libreBaskerville(
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: const Color(0xff282828)),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.libreBaskerville(),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have account?',
                    style: GoogleFonts.libreBaskerville(),
                  ),
                  Text(
                    ' Login',
                    style: GoogleFonts.libreBaskerville(
                        color: Color(0xffff5c00),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageList {
  final String imageName;
  ImageList(this.imageName);
}
