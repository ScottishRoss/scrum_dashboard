import 'package:admin/models/completed_sprint.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AverageVelocity extends StatefulWidget {
  const AverageVelocity({
    Key? key,
  }) : super(key: key);

  @override
  State<AverageVelocity> createState() => _AverageVelocityState();
}

class _AverageVelocityState extends State<AverageVelocity> {
  late String averageVelocity;
  @override
  void initState() {
    super.initState();
    averageVelocity = getAverageVelocity().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Average Velocity',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Text(averageVelocity),
                ],
              )),
        ],
      ),
    );
  }
}
