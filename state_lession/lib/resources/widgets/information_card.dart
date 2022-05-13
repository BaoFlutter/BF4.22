import 'package:flutter/material.dart';
class InformationCard extends StatelessWidget {
  final String firstLable;
  final String firstContent;
  final String secondLabel;
  final String secondContent;
  const InformationCard({Key? key,
    required this.firstLable,
    required this.firstContent,
    required this.secondLabel,
    required this.secondContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              // Điểm Trung Bình: 9.5
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(firstLable),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(firstContent)
                  )
                ],
              ),
              // Học lực: Đạt
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                  child: Text(secondLabel)),

                  Expanded(
                    flex: 1,
                  child: Text(secondContent)
                  )
                ],
              )
            ],

          ),
        )
      ),
    );
  }
}
