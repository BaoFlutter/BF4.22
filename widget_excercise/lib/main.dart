import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InformationScreen()
    );
  }
}

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController birthYearController = TextEditingController();

  String userName = "Chưa xác định";
  String ageStr = "Chưa xác định";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xác đinh thông tin"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
          child: Column(
            children: [
              // Widget nhập tên
              inputWidget(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào họ và tên",
                  controller: userNameController),
              // Widget nhập năm sinh
              inputWidget(
                  labelText: "Năm sinh",
                  hintText: "Nhập năm sinh",
                  controller: birthYearController),
              // Button tính tưổi
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    
                    setState(() {
                      userName = userNameController.text;
                      ageStr = (DateTime.now().year - int.parse(birthYearController.text)).toString();
                    });

                  },
                  child: Text("Show Information")),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(userName),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(ageStr)
                      ],
                    ),
                  ),
                ),
              )

              // Card thông tin kết quả

            ],
          ),
        ),
      )
    );
  }
  Widget inputWidget({ required String labelText, required String hintText, required controller}){
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText
        ),
        controller: controller,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userNameController.dispose();
    birthYearController.dispose();
  }

}


