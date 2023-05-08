import 'dart:math';

import 'package:animator/screen/homepage/controller/Animator_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Animatescreen extends StatefulWidget {
  const Animatescreen({Key? key}) : super(key: key);

  @override
  State<Animatescreen> createState() => _AnimatescreenState();
}

class _AnimatescreenState extends State<Animatescreen> with SingleTickerProviderStateMixin{
  Animate_controller controller = Get.put(Animate_controller());
  AnimationController? animationController;
  Animation? round;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4),);
    round = Tween<double>(begin: 10, end: 10).animate(animationController!);
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {
      });
    });
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("plannets"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 200,
                            width: 350,
                            padding: EdgeInsets.symmetric(horizontal: 75),
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${controller.modelList[index].Name}",
                                    style: TextStyle(
                                      letterSpacing: 2,
                                        fontSize: 15,

                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                // Text(
                                //   "${controller.modelList[index].Gname}",
                                //   style: TextStyle(
                                //       fontSize: 15,
                                //       // fontWeight: FontWeight.w500,
                                //       color: Colors.white60),
                                // ),
                                SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 50,),
                    InkWell(
                      onTap: () => Get.toNamed('/detail',arguments: index),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Transform.rotate(
                            angle: animationController!.value*2*pi,
                            child: Image.asset(
                              height: 200,
                              width: 200,
                                "${controller.modelList[index].Image}",)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "More detail",
                            style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 10,

                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Icon(Icons.navigate_next,color: Colors.black,)
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: controller.modelList.length,
          ),
        ),
      ),
    );
  }
}