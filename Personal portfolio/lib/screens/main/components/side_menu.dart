import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
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
                      onPressed: () async {
                        await launch('https://github.com/FahimKamal/Flutter_Personal_Portfolio/raw/main/Personal%20portfolio/CV-Fahim-Kamal-Ahmed.pdf');
                      },
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
                            onPressed: () async {
                              await launch('https://www.linkedin.com/in/fahim-kamal-ahmed-3a80a4161/');
                            },
                              tooltip: "Linkedin Profile",
                            icon: SvgPicture.asset("assets/icons/linkedin.svg")
                          ),
                          IconButton(
                              onPressed: () async {
                                await launch('https://github.com/FahimKamal');
                              },
                              tooltip: "Github Profile",
                              icon: SvgPicture.asset("assets/icons/github.svg")
                          ),
                          IconButton(
                              onPressed: () async {
                                await launch('https://www.facebook.com/fahimkamal63/');
                              },
                              tooltip: 'Facebook Profile',
                              icon: Container( width: 20,child: Image.asset("assets/icons/facebook.png", color: Colors.grey[600],)),
                          ),
                          IconButton(
                              onPressed:  () async {
                                await launch('https://www.instagram.com/fahimkamal63/');
                              },
                              tooltip: 'Instagram Profile',
                              icon: Container( width: 20,child: Image.asset("assets/icons/instagram.png", color: Colors.grey[600],)),
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
