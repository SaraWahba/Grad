import 'package:flutter/material.dart';
import 'package:project_graduation/widgets/customdrawer.dart';

import '../models/course_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/item_grid_view.dart';

class OurCourses extends StatefulWidget {
  const OurCourses({super.key});
  static String id = "OurCourses";
  @override
  State<OurCourses> createState() => _OurCoursesState();
}

class _OurCoursesState extends State<OurCourses> {
  List<CourseModel> listCourses = [
    CourseModel(
      image: 'img1.jpeg',
      title: 'Art Coursesghfghfhgfgh',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img2.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img3.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img4.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img5.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img6.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img7.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img8.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
    CourseModel(
      image: 'img9.jpeg',
      title: 'Art Courses',
      subTitle:
          'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomAppBar(
            image: 'assets/images/course.jpeg',
            scaffoldKey: scaffoldKey,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 45),
                child: Text(
                  "Our Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "You can find any Coureses Which you want it !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: listCourses.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemGridView(
                image: listCourses[index].image,
                title: listCourses[index].title,
                subTitle: listCourses[index].subTitle,
              );
            },
          ),
        ]),
      ),
    );
  }
}
