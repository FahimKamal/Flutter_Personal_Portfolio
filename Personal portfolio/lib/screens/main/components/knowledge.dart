import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart",),
        KnowledgeText(text: "Unity, C#",),
        KnowledgeText(text: "3D Design",),
        KnowledgeText(text: "Blender",),
        KnowledgeText(text: "GIT Knowledge",),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2,),
          Text(text)
        ],
      ),
    );
  }
}