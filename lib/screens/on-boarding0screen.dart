import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie/components/custom_outline.dart';
import 'package:movie/constants.dart';

class OnBoarderScreen extends StatelessWidget {
  const OnBoarderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -88,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child:Container(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
           SafeArea(
             child:Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWidth * .8,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kPinkColor.withOpacity(0),
                      Constants.kGreenColor.withOpacity(0.1),
                      Constants.kGreenColor,
                    ],
                    stops: const [0.2, .4, .6, 1],
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img-onboarding.png'),
                          fit: BoxFit.cover,
                      alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  height: screenWidth * 0.8,
                  width: screenWidth * .8,
                ),

                SizedBox(
                  height:  screenHeight * .09,
                ),
                Text(
                  'Watch movie in \n Virtual Reality',
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize: screenHeight <=660?18 :34,
                    fontWeight: FontWeight.w700,
                    color: Constants.kWhiteColor.withOpacity(.8),
                  ),

                ),
                SizedBox(
                  height:  screenHeight * .05,
                ),
                Text(
                  'Download and watch offline \n wherever you are',
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize: screenHeight <=660?12 :16,
                    fontWeight: FontWeight.w100,
                    color: Constants.kWhiteColor.withOpacity(.75),
                  ),

                ),
                SizedBox(
                  height:  screenHeight * .03,
                ),
                CustomOutline(
                  strokeWidth: 3,
                  radius:20,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                       Constants.kGreenColor,
                    ],
                  ),
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor.withOpacity(.30),
                          Constants.kGreenColor.withOpacity(.30),
                        ],
                      ),

                    ),
                  child: Center(
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize: screenHeight <=660?11 :14,
                        fontWeight: FontWeight.w700,
                        color: Constants.kWhiteColor.withOpacity(.75),
                      ),

                  ),
                  ),
                  ),
                  height:38 ,
                  width: 160,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  List.generate(
                    3, ((index){
                    return Container(
                      height:7 ,
                      width: 7,
                      margin:const EdgeInsets.symmetric(
                          horizontal: 4
                      ),
                      decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color:index==0 ?
                          Constants.kGreenColor
                              :index ==1 ?
                          Constants.kWhiteColor.withOpacity(.20)
                              :Constants.kWhiteColor.withOpacity(.20)
                      ),
                    );
                  }
                  ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * .03,
                ),

              ],
            ),
             ),
           ),

          ],
        ),
      ),
    );
  }
}
