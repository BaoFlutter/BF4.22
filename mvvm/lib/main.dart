
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_models/video_list_provider.dart';
import 'views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2. Khai báo Provider ở Widget cha của Widget con muốn sử dụng
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (conetx)=> VideoListProvider()),

        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),

    );
  }
}

