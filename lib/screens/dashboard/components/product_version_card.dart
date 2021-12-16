import 'package:admin/models/product_version.dart';
import 'package:flutter/material.dart';
import 'package:admin/responsive.dart';

import '../../../constants.dart';

class VersionInfoCard extends StatelessWidget {
  const VersionInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final VersionInfo info;

  Color releaseFontColour(String isReleased) {
    if (isReleased == 'Released') {
      return Colors.green;
    } else if (isReleased == 'In Dev') {
      return Colors.blueAccent;
    } else {
      return Colors.grey;
    }
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    info.initial!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
              //Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Visibility(
            visible: Responsive.isMobile(context) == false,
            child: Text(
              info.product!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Visibility(
            visible: Responsive.isMobile(context) == false,
            child: ProgressLine(
              color: info.color,
              percentage: info.percentage,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'V: ${info.version}',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
              Visibility(
                visible: Responsive.isMobile(context) == false,
                child: Text(
                  info.isReleased.toString(),
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: releaseFontColour(info.isReleased!)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
