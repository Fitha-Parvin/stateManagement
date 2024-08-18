import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementnew/provider/movieProvider.dart';

void main(){
  runApp(MaterialApp(home: secondpage(),));
}
class secondpage   extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var wishMovie=context.watch<Movieprovider>().toWislist;

    return Scaffold(
      appBar: AppBar(title: Text("My WhishList ${wishMovie.length}"),),
      body: Column(
        children: [

          Expanded(child: ListView.builder(
            itemCount: wishMovie.length,
              itemBuilder: (context , index){

              final moviedata=wishMovie[index];

                return Card(
                  child: ListTile(
                    title: Text(moviedata.title),
                    subtitle: Text(moviedata.time!),
                    trailing: TextButton(onPressed: (){
                      context.read<Movieprovider>().RemoveFromWhisList(moviedata);

                    },child: Text("Remove"),)


                  ),
                );
              }))
        ],
      ),
    );
  }
}
