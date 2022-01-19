import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Discover my amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding,),
                ElevatedButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding *2,
                          vertical: defaultPadding ,
                        )),
                    child: Text("EXPLORE NOW", style: TextStyle(color: darkColor),)
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding/2,),
          Text("I build "),
          AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("PC and Mobile game with Unity.", speed: Duration(milliseconds: 60)),
                TyperAnimatedText("responsive web and mobile app.", speed: Duration(milliseconds: 60)),
                TyperAnimatedText("complete e-commerce app UI.", speed: Duration(milliseconds: 60)),
                TyperAnimatedText("Chat app with dark and light theme.", speed: Duration(milliseconds: 60)),
              ]
          ),
          SizedBox(width: defaultPadding / 2,),
          FlutterCodedText()
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            text: "<",
            children: [
              TextSpan(
                  text: "flutter",
                  style: TextStyle(color: primaryColor)
              ),
              TextSpan(
                  text: ">"
              )
            ]
        )
    );
  }
}


