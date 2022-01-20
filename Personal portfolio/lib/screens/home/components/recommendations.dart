import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';

import '../../../constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demo_recommendations.length,
                      (index) => Padding(
                    padding: EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(recommendation: demo_recommendations[index],),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key, required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendation.source!,
            // style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: defaultPadding,),
          Text(recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
