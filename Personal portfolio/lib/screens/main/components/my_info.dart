import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/ProfilePicture.jpg"),
            ),
            Spacer(),
            Text("Fahim Kamal Ahmed", style: Theme.of(context).textTheme.subtitle2,),
            Text("Unity Game Developer & \n Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}