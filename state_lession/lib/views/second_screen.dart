import 'package:flutter/material.dart';
import 'package:state_lession/resources/strings.dart';
import 'package:state_lession/resources/widgets/information_card.dart';
class SecondScreen extends StatelessWidget {
  final String averageMarkStr;
  final String gradeStr;
  const SecondScreen({Key? key, required this.averageMarkStr, required this.gradeStr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(information),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: InformationCard(
            firstLable: averageMark + ": ",
            firstContent: averageMarkStr,
            secondLabel: grade+ ": ",
            secondContent: gradeStr)
      )
    );
  }
}
