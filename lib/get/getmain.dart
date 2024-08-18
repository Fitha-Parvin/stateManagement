import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementnew/get/controller.dart';

void main(){
  runApp(GetMaterialApp(home: getmain(),));
}
class getmain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final CountControll data=Get.put(CountControll());
    return Scaffold(

      appBar: AppBar(
        title: Text("CountEx"),),
      body: Center(
        child: Column(
          children: [
            Obx(()=>Text("Count=${data.count}")),
            ElevatedButton(onPressed: ()=>data.increment(),
                child: Text("+")),
            SizedBox(height: 10),
              ElevatedButton(onPressed: ()=>data.decrement(),
                  child: Text("-")),

          ],
        ),
      ),
    );
  }
}
