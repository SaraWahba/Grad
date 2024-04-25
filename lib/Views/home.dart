import 'package:flutter/material.dart';
import 'package:project_graduation/widgets/customdrawer.dart';

import 'our_courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background .jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: const Color(0xFF343341).withOpacity(.83),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Think Tank",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Education is the transmission of knowledge, skills, and character traits and manifests in various forms. Formal education occurs within a structured institutional framework, such as public schools.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: getColor(
                            const Color(0xFFDC3546), Colors.transparent),
                        side: getBorder(const Color(0xFFDC3546), Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, OurCourses.id);
                      },
                      child: const Text(
                        "Our Courses",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: getColor(
                            Colors.transparent, const Color(0xFFDC3546)),
                        side: getBorder(Colors.white, const Color(0xFFDC3546)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "About Us",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 35, start: 25),
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
              iconSize: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  getColor(Color white, Color red) {
    final getcolor = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return red;
      } else {
        return white;
      }
    };
    return MaterialStateProperty.resolveWith(getcolor);
  }

  getBorder(Color color, Color white) {
    final getborder = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return BorderSide(
          color: white,
          width: 2,
        );
      } else {
        return BorderSide(
          color: color,
          width: 2,
        );
      }
    };
    return MaterialStateProperty.resolveWith(getborder);
  }
}
