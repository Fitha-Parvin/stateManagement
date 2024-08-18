import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementnew/provider/secondScreen.dart';

import 'movieProvider.dart';

void main(){
  runApp(ChangeNotifierProvider<Movieprovider>(
    create:(BuildContext context)=>Movieprovider(),
    child:MaterialApp(home:mainPage() )
  ));
}
class mainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var Allmovies=context.watch<Movieprovider>().data;
    var wishMovie=context.watch<Movieprovider>().toWislist;
    print(Allmovies);

    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: Column(
        children: [
         ElevatedButton.icon(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage()));
             },
             icon: Icon(Icons.favorite_border),
             label: Text("Go to whistlist  ${wishMovie.length}")),
          Expanded(child: ListView.builder(
            itemCount: Allmovies.length,
              itemBuilder: (context , index){

              final CurrentMovie=Allmovies[index];

                return Card(
                  child: ListTile(
                    title: Text(CurrentMovie.title),
                    subtitle: Text("minutes ${CurrentMovie.time!}"),
                    trailing: IconButton(onPressed: (){

                      if(!wishMovie.contains(CurrentMovie)){
                        context.read<Movieprovider>().addToWhishList(CurrentMovie);
                      }else{
                        context.
                      read<Movieprovider>().RemoveFromWhisList(CurrentMovie);
                      }


                    },
                      icon: Icon(Icons.favorite_border,
                    color: wishMovie.contains(CurrentMovie)?
                        Colors.red
                      :Colors.black26,),)

                  ),
                );
              }))
        ],
      ),
    );
  }
}
