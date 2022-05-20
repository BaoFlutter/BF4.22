import 'package:flutter/material.dart';
import 'package:state_lession/databases/information_database.dart';
import 'package:state_lession/resources/strings.dart';
import 'package:state_lession/resources/widgets/information_card.dart';

import '../models/information.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final db = InformationDatabase();
  Future<List<Information>>? futureInformationList ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInformation();
  }

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
            child: FutureBuilder<List<Information>>(
              future: futureInformationList,
              builder: (context, snapshot){
                if(snapshot.hasError) return Center(
                  child: Text("Load dữ liệu lỗi"),
                );
                if(!snapshot.hasData) return Center(
                  child: CircularProgressIndicator(),
                );
                List<Information> informationList = snapshot.data!;
                return ListView.separated(
                  separatorBuilder: (context, index){
                    return Divider();
                  },
                    itemCount: informationList.length,
                  itemBuilder: (BuildContext context, int index){
                    Information information = informationList[index];
                      return Container(
                        child: Row(
                          children: [
                            Expanded (
                              flex: 1,
                              child: Text(information.id.toString()),
                            ),
                            Expanded (
                              flex: 5,
                              child: Text(information.average_mark!),
                            ),
                            Expanded (
                              flex: 4,
                              child: Text(information.adjustment!),
                            ),


                          ],
                        ),
                      );
                  }

                );
            },
            )

        )
    );
  }

  getInformation(){
    futureInformationList = db.fetchAll();
  }


}
