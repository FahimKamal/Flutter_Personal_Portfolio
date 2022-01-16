import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
          child: Text("Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: "Dart",),
        AnimatedLinearProgressIndicator(percentage: 0.68, label: "C#",),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: "Python",),
        AnimatedLinearProgressIndicator(percentage: 0.69, label: "HTML",),
        AnimatedLinearProgressIndicator(percentage: 0.45, label: "CSS",),
      ],
    );
  }
}