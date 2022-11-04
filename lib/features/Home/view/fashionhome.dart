import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterwebtutorial/view/app.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionHome extends StatefulWidget {
  const FashionHome({super.key});

  @override
  State<FashionHome> createState() => _FashionHomeState();
}

class _FashionHomeState extends State<FashionHome> {
  final List<ImageList> _list = [
    ImageList('assets/image/fashionhome4.jpg'),
    ImageList('assets/image/fashionhome2.jpg'),
    ImageList('assets/image/fashionhome3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                  image: AssetImage('assets/image/fashionhome4.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image(
                  image: AssetImage('assets/image/fashionhome2.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                  image: AssetImage('assets/image/fashionhome3.jpg'),
                  fit: BoxFit.fitWidth),
            ),
          ),
        ],
      )),
    );
  }
}

class ImageList {
  final String imageName;
  ImageList(this.imageName);
}
