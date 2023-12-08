import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:nuit_info/utlis/colors.dart';
import 'package:nuit_info/utlis/styles.dart';
import 'package:nuit_info/view/screens/quizscreen.dart';
import 'package:nuit_info/view/widgets/primary_butt.dart';

class WelcomePagre extends StatefulWidget {
  const WelcomePagre({super.key});

  @override
  State<WelcomePagre> createState() => _WelcomePagreState();
}

class _WelcomePagreState extends State<WelcomePagre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cBackgroundColor ,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Expanded( 
                flex: 2,
                  child: Column(
                children: [
                  Text(
                    "Hi I'm Pingu!",
                    style: Styles().titleHeadingStyle(),
                  ),
                  Text(
                    "The world is getting warmer and it's affecting my icy habitat",
                    style: Styles().titleHeadingStyle(),
                  ),
                  Text(
                    "But you can help!",
                    style: Styles().titleHeadingStyle(),
                  ),
                  Text(
                    "Click on yhe 'Play' butoon to save me",
                    style: Styles().titleHeadingStyle(),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: PrimaryButton( 
                         text: 'PLAY',
                        onPressed: () { 
                          Get.to(()=> const  QuizPage()) ;
                        }),
                    ),
                  )
                ],
              )),
              Expanded(  
                flex: 2,
                child: Lottie.asset("assets/animate.json"))
            ],
          ),
        ));
  }
}
