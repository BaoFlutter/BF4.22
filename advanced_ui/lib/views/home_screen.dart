import 'package:advanced_ui/resources/widgets/button_item.dart';
import 'package:advanced_ui/resources/widgets/description_widget.dart';
import 'package:advanced_ui/resources/widgets/image_cover.dart';
import 'package:advanced_ui/resources/widgets/title_widget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            // image cover
            ImageCover(imageUrl: "assets/images/lake_campground.jpeg"),
            // title widget
            TitleWidget(
                name: "Oeschinen Lake Campground",
                address: "Kandersteg, Swizẻland",
                rateNumber: 41),
            // buttons widget
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                      child: ButtonItem(
                          onPressed: () {
                            print("Calling ...");
                          },
                          iconData: Icons.call,
                          buttonText: "call",
                          buttonColor: Colors.blue),
                  ),
                  Expanded(
                    flex: 1,
                      child: ButtonItem(
                          onPressed: () {
                            print("Routing ...");
                          },
                          iconData: Icons.navigation,
                          buttonText: "route",
                          buttonColor: Colors.blue)),
                  Expanded(
                    flex: 1,
                      child: ButtonItem(
                          onPressed: () {
                            print("Sharing ...");
                          },
                          iconData: Icons.share,
                          buttonText: "share",
                          buttonColor: Colors.blue))
                ],
              ),

            ),

            // description
            DescriptionWidget(
                text: "Kandersteg, in the Bernese Highlands, is a dramatic resort village, facing the amazing Bluemlisalp Massif. This wonderful mountain village in the heart of Swiss Alps is a destination worth visiting throughout the calendar year. No doubt, its picture-perfect mountains and wooden chalets seem to cast a spell on you. But, it is considered a true paradise for skiers and hikers from all over the world."),

          ],
        ),
      ),
    );
  }
}
