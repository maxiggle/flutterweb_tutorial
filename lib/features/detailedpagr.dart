import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionDetailedPage extends StatefulWidget {
  const FashionDetailedPage({super.key});

  @override
  State<FashionDetailedPage> createState() => _FashionDetailedPageState();
}

class _FashionDetailedPageState extends State<FashionDetailedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage('assets/image/fashionhome2.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 350,
                    top: 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          backgroundColor: const Color(0xffE3E3E3)),
                      child: const Icon(
                        Icons.bookmark,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -5,
                    top: 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE3E3E3),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GUCIE Long Sleeve Outer Woman Series',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Women clothing',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 13, fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '\$ 175.99',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFF5C00)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              controller: _tabController,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.black),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  text: 'All Contents',
                  height: 27,
                ),
                Tab(
                  text: 'Favorites',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
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

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
