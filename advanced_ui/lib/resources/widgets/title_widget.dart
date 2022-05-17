import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  final String name ;
  final String address;
  final int rateNumber;

  const TitleWidget({Key? key, required this.name, required this.address, required this.rateNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // title
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                  Text(address, style: TextStyle(color: Colors.black54),)
                ],
              ),
            ),
          ),
          // rate
         Expanded(
             flex: 1,
             child:  Container(
               child: Row(
                 children: [
                   Icon(Icons.star, color: Colors.red,),
                   Text(rateNumber.toString())
                 ],
               ),
             ),)
        ],
      ),
    );
  }
}
