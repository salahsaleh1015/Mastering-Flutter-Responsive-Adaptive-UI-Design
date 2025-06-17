


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_drawer.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffdbdbdb),
      appBar: MediaQuery.sizeOf(context).width > 900 ? null : AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
         icon: Icon( Icons.menu),color: Colors.white,),
      ),
      body: HomeViewBody(),
    );
  }
}


