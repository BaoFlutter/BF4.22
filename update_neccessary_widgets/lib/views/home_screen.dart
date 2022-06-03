import 'package:flutter/material.dart';
import 'package:state_lession/resources/strings.dart';
import 'package:state_lession/resources/widgets/custom_button.dart';
import 'package:state_lession/resources/widgets/information_card.dart';
import 'package:state_lession/resources/widgets/text_input_widget.dart';
import 'package:state_lession/views/second_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //1. Hàm tạo ra state, và tạo ra BuildContext gắn với State đó
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //2 . mounted = true : kiểm tra xem state có chưa

  // 3. Khởi tạo State lên: không được sử dụng context ở đây

  TextEditingController? toanController, vanController, anhController;

   // Bước 1 : Tạo instance là ValueNotifier với giá trị cần thay đổi
  ValueNotifier<String> averageMarkStrNotifier = ValueNotifier<String>("Chưa xác định");
  ValueNotifier<String> gradeStrNotifier = ValueNotifier<String>("Chưa xác định");


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    toanController = TextEditingController();
    vanController = TextEditingController();
    anhController = TextEditingController();
  }
  // 4. didChange : hàm chạy khi lần đầu chạy widget , chỉ chạy sau khi build khi có state object thay đổi
  // có thể bắt đầu dùng context
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  // 5. Hàm Build  để build giao diện hiển thị cho người dùng : state , context
  @override
  Widget build(BuildContext context) {
    if(mounted) print("State đã tồn tại") ;
    return Scaffold(
      appBar: AppBar(
        title: Text(studentAdjustment),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Column(
            children: [
              // nhập điểm toán
              TextInputWidget(
                  labelText: mathMark,
                  hintText: mathMarkHint,
                  controller: toanController),
              // nhập điểm văn
              TextInputWidget(
                  labelText: litetureMark,
                  hintText: litetureMarkHint,
                  controller: vanController),
              // nhập điểm anh
              TextInputWidget(
                  labelText: englishMark,
                  hintText: englishMarkHint,
                  controller: anhController),
              // button
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onPressed: (){
                    // 7. Khi setstate được chạy thì : build lại widget với các giá trị nằm trong hàm setState
                   // setState(() {
                    // Bước 2. Cập nhật Value
                    averageMarkStrNotifier!.value = ((double.parse(toanController!.text) + double.parse(vanController!.text) + double.parse(anhController!.text))/3).toStringAsFixed(1);
                   // gradeStrNotifier!.value =  getGrade(mark: double.parse( averageMarkStrNotifier!.value));

                   // });

                  },
                  textButton: adjustment),
              // output

              // Bước 3: Build lại Widget mà lấy giá trị đó
              ValueListenableBuilder<String>(
                  valueListenable: averageMarkStrNotifier,
                  builder: (context, String value, Widget? child ) => InformationCard(
                  firstLable: averageMark + ": ",
                  firstContent: value,
                  secondLabel: grade+ ": ",
                  secondContent: "Chưa xác định" ),
                ),



            TextButton(
                  onPressed: (){
                    //var route = MaterialPageRoute(builder: (context) => SecondScreen(averageMarkStr: averageMarkStr, gradeStr: gradeStr));
                    //Navigator.push(context, route);
                  },
                  child: Text(
                      showInfor
                  )),
            ],
          ),
        ),
      )
    );
  }


  // 6. Build UpdateWidget
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  // 7. Set State


 String getGrade({ required double mark})
 {
   if((mark > 10) || (mark < 0)) return "Không hợp lệ";
   if(mark < 5) return "Chưa đạt";
   if(mark < 8.5) return "Đạt";
   return "Xuất sắc";
 }

 // 8. deactivate State

 @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  // 9. dispose: Huỷ state
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    toanController!.dispose();
    vanController!.dispose();
    anhController!.dispose();
  }

  // 10. mounted = false;


}
