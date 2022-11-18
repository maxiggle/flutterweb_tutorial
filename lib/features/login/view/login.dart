import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterwebtutorial/features/Home/view/fashionhome.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../responsive/responsive_value.dart';

class FashionLogin extends StatefulWidget {
  const FashionLogin({super.key});

  @override
  State<FashionLogin> createState() => _FashionLoginState();
}

class _FashionLoginState extends State<FashionLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Center(
            child: SizedBox(
              width: 600,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const StaggeredImage(),
                  const SizedBox(
                    height: 32,
                  ),
                  const LoginScreenWriteUp(),
                  const SizedBox(
                    height: 20,
                  ),
                  const GetStartedButton(),
                  const SizedBox(height: 15),
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
                            color: const Color(0xffff5c00),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: const ResponsiveValue<double>(
        small: 200,
        large: 500,
      ).getValue(context),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const FashionHome()),
          );
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: const Color(0xff282828)),
        child: Text(
          'Get Started',
          style: GoogleFonts.nunitoSans(),
        ),
      ),
    );
  }
}

class LoginScreenWriteUp extends StatelessWidget {
  const LoginScreenWriteUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Let's Create \nYour ",
        style: GoogleFonts.nunitoSans(
            color: Colors.black, fontSize: 36, fontWeight: FontWeight.w900),
        children: const [
          TextSpan(
            text: 'Style',
            style: TextStyle(
              color: Color(0xffff5c00),
            ),
          ),
          TextSpan(
            text: ' With \nFashionist',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class StaggeredImage extends StatelessWidget {
  const StaggeredImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StaggeredGrid.count(
        crossAxisCount: 5,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: const Image(
                  image: AssetImage('assets/image/fashionhome4.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
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
    );
  }
}
