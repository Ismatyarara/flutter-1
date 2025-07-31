
import 'package:flutter/material.dart';
import 'package:isma_project/container_widget/container_dua.dart';
import 'package:isma_project/container_widget/container_satu.dart';
import 'package:isma_project/form_widget/input_screen.dart';
import 'package:isma_project/readmap_belajar_rpl/grid_roadmap.dart';
import 'package:isma_project/grid_view/grid_satu.dart';
import 'package:isma_project/grid_view/grid_view.dart';
import 'package:isma_project/list_widget/list_satu.dart';
import 'package:isma_project/list_widget/list_screen.dart';
import 'package:isma_project/main_layout.dart';
import 'package:isma_project/row_column_widget/column_satu.dart';
import 'package:isma_project/row_column_widget/latihan_dua.dart';
import 'package:isma_project/row_column_widget/latihan_row_column.dart';
import 'package:isma_project/row_column_widget/latihan_satu.dart';
import 'package:isma_project/row_column_widget/row_satu.dart';
import 'package:isma_project/stack_widget/stack_dua.dart';
import 'package:isma_project/stack_widget/stack_satu.dart';
import 'package:isma_project/stack_widget/stack_tiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  InputFormScreen()
   );
  }
}

class halloflutter extends StatelessWidget {
  const halloflutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'belajar flutter',
      body: Center(
        child: Text(
          'hallo flutter', 
          style: TextStyle(
            fontSize : 24,
            color :Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(255, 218, 172, 187),
          )),
      ),
    );
  }
}
