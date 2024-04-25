import 'package:flutter/material.dart';
import 'package:project_graduation/Views/blog_view.dart';
import 'package:project_graduation/Views/home.dart';
import 'package:project_graduation/Views/our_courses.dart';

void main() {
  runApp(const ProjectGraduation());
}

class ProjectGraduation extends StatelessWidget {
  const ProjectGraduation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "homePage",
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        OurCourses.id: (context) => const OurCourses(),
        BlogView.id: (context) => const BlogView(),
      },
    );
  }
}
