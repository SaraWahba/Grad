import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_graduation/core/app_styles.dart';
import 'package:project_graduation/widgets/custom_app_bar.dart';

import '../widgets/customdrawer.dart';

class BlogView extends StatefulWidget {
  const BlogView({super.key});
  static String id = "BlogView";

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<String> images = [
    "assets/images/img1.jpeg",
    "assets/images/img2.jpeg",
    "assets/images/img3.jpeg",
    "assets/images/img4.jpeg",
    "assets/images/img5.jpeg",
    "assets/images/img6.jpeg",
    "assets/images/img7.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    // _pageController.addListener(() {
    //   setState(() {
    //     _currentPage = _pageController.page!.round();
    //     print("*****************************");
    //     print(_currentPage);
    //     print("************************");
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          CustomAppBar(
            image: "assets/images/img1.jpeg",
            scaffoldKey: scaffoldKey,
            height: MediaQuery.of(context).size.height * .25,
            children: const [
              Text(
                "Blog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          StatefulBuilder(
            builder: (context, ssetState) {
              return Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * .72,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        enlargeFactor: 0.4,
                        autoPlay: true,
                        onPageChanged: (value, _) {
                          ssetState(() {
                            currentPage = value;
                          });
                        }),
                    items: images.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(15)),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, right: 30, left: 30, bottom: 15),
                                  child: Text(
                                    "Blog 1",
                                    style: AppStyles.textStyle18.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, right: 30, left: 30, bottom: 30),
                                  child: Text(
                                    "dfhdsgkbfhmdsbfkjhmdsvgifklds fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf  fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf",
                                    style: AppStyles.textStyle16,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 6,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (index) => InkWell(
                        onTap: () {
                          pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentPage == index
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )

          // Expanded(
          //   child: Stack(
          //     alignment: Alignment.bottomCenter,
          //     children: [
          //       PageView.builder(
          //         controller: pageController,
          //         itemCount: images.length,
          //         onPageChanged: (newValue) {
          //           setState(() {
          //             currentPage = newValue;
          //           });
          //         },
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Image.asset(
          //               images[index],
          //               fit: BoxFit.cover,
          //             ),
          //           );
          //         },
          //       ),
          //       Positioned(
          //         bottom: 20,
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: List.generate(
          //             images.length,
          //             (index) => InkWell(
          //               onTap: () {
          //                 pageController.animateToPage(index,
          //                     duration: Duration(milliseconds: 300),
          //                     curve: Curves.easeIn);
          //               },
          //               child: Container(
          //                 width: 10,
          //                 height: 10,
          //                 margin: const EdgeInsets.symmetric(horizontal: 5),
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   color: currentPage == index
          //                       ? Colors.blue
          //                       : Colors.grey,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  // List<Widget> _buildPageIndicator() {
  //   List<Widget> indicators = [];
  //   for (int i = 0; i < images.length; i++) {
  //     indicators.add(
  //       Container(
  //         width: 10,
  //         height: 10,
  //         margin: EdgeInsets.symmetric(horizontal: 5),
  //         decoration: BoxDecoration(
  //           shape: BoxShape.circle,
  //           color: currentPage == i ? Colors.blue : Colors.grey,
  //         ),
  //       ),
  //     );
  //   }
  //   return indicators;
  // }
}
