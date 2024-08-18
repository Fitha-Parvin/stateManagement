import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementnew/theme/themecontroller.dart';
import 'package:statemanagementnew/theme/themedata.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Demo",
      theme: Customtheme.lightTheme,
      darkTheme: Customtheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Home(),


    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _controller=Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Obx(
            ()=>Text(_controller.currentTheme.value==ThemeMode.dark
    ?"DarkThem"
    :"LightThem"),
      ),
      ),
      body: Center(child: Column(
        children: [
          Text("Tap on Switch",style: TextStyle(fontSize: 20),),
          Obx(()=>Switch(value: _controller.currentTheme.value==ThemeMode.dark, onChanged: (value){
            _controller.switchTheme();
            Get.changeThemeMode(_controller.currentTheme.value);
          },
            activeColor: Colors.white,
          ))
        ],
      ),),
    );
  }
}


