import 'package:admin/models/completed_sprint.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CompletedSprintTable extends StatelessWidget {
  const CompletedSprintTable({
    Key? key,
  }) : super(key: key);

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
            'Completed Sprints',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text('Sprint Number'),
                ),
                DataColumn(
                  label: Text('Completed Date'),
                ),
                DataColumn(
                  label: Text('Planned SPs'),
                ),
                DataColumn(
                  label: Text('Completed SPs'),
                ),
                DataColumn(
                  label: Text('Velocity'),
                ),
              ],
              rows: List.generate(
                testCompletedSprints.length,
                (index) => completedSprintDataRow(testCompletedSprints[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow completedSprintDataRow(CompletedSprint completedSprint) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(completedSprint.sprintNumber.toString()),
            ),
          ],
        ),
      ),
      DataCell(Text(completedSprint.completedDate.toString())),
      DataCell(Text(completedSprint.plannedSP.toString())),
      DataCell(Text(completedSprint.completedSP.toString())),
      DataCell(Text(completedSprint.velocity.toString())),
    ],
  );
}
