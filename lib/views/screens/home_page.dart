import 'package:custom_clippers/Clippers/directional_wave_clipper.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotateAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(minutes: 5));
    controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipPath(
              clipper: DirectionalWaveClipper(),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color.fromRGBO(255, 153, 51, 1),
                child: Text(
                  "HAPPY",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 50),
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Text(
                    "INDEPENDENCE",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.1), fontSize: 50),
                  ),
                ),
                Center(
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: controller.value * 300,
                        child: Image.asset(
                          "assets/ashok_chakraa.png",
                          height: 100,
                          width: 100,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            ClipPath(
              clipper: DirectionalWaveClipper(
                  verticalPosition: VerticalPosition.TOP,
                  horizontalPosition: HorizontalPosition.RIGHT),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color.fromRGBO(19, 136, 8, 1),
                child: Text(
                  "DAY",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 50),
                ),
              ),
            ),
          ],
        ));
  }
}
