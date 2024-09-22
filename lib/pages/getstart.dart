import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const RiveAnimation.asset("assets/breathing_animation.riv",
          fit: BoxFit.cover),
      Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                onPressed: () {},
                child: const Text(
                  "Get Start!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )),
          )),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Manage\nYour\nFinances",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 44),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 40),
                child: Text(
                  "Empower your money,\nsimplify your life",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              )
            ]),
      )
    ]));
  }
}
