import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.image,
      required this.children,
      required this.scaffoldKey,
      this.height});
  final String image;
  final List<Widget> children;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * .35,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF343341).withOpacity(.55),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          ),
          PositionedDirectional(
            top: 0,
            start: 0,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 35, start: 18),
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
                iconSize: 35,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
