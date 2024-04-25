import 'package:flutter/material.dart';
import 'package:project_graduation/core/app_styles.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/images/$image"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF343341).withOpacity(.55),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.textStyle18.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        const Shadow(
                          color: Colors.red,
                          blurRadius: 10,
                        )
                      ]),
                ),
              ),
              Text(
                subTitle,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.textStyle14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
