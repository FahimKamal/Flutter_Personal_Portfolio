import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(title: "Residence", text: "Bangladesh",),
                    AreaInfoText(title: "City", text: "Bogura",),
                    AreaInfoText(title: "Age", text: "23",),
                    Skills(),
                    SizedBox(height: defaultPadding,),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding,),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text("DOWNLOAD CV",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1?.color
                            ),),
                            SizedBox(width: defaultPadding / 2,),
                            SvgPicture.asset('assets/icons/download.svg')
                          ],
                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){},
                              tooltip: "Linkedin Profile",
                            icon: SvgPicture.asset("assets/icons/linkedin.svg")
                          ),
                          IconButton(
                              onPressed: (){},
                              tooltip: "Github Profile",
                              icon: SvgPicture.asset("assets/icons/github.svg")
                          ),
                          IconButton(
                              onPressed: (){},
                              tooltip: 'Twitter Profile',
                              icon: SvgPicture.asset("assets/icons/twitter.svg")
                          ),
                          IconButton(
                              onPressed: (){},
                              tooltip: 'Dribble Profile',
                              icon: SvgPicture.asset("assets/icons/dribble.svg")
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ) 
            ),
          ],
        ),
      ),
    );
  }
}
