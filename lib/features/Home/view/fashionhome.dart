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
  final List<TaskIcon> _list = [
    TaskIcon('assets/image/fashionhome4.jpg'),
    TaskIcon('assets/image/fashionhome2.jpg'),
    TaskIcon('assets/image/fashionhome3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            pattern: [
              const WovenGridTile(1),
              const WovenGridTile(
                3 / 7,
                crossAxisRatio: 0.9,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              color: Colors.red,
              height: 10,
              width: 20,
            ),
            // childCount: 5,
          ),
        ),
      ),
    );
  }
}

class TaskIcon {
  final String imageName;
  TaskIcon(this.imageName);
}
