 import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'movie.dart';

final List<Movies>movieList=List.generate(
    100,
    (index)=>Movies(
        title: 'Movie $index',
    time: '${Random().nextInt(100)+60}'));


class Movieprovider extends ChangeNotifier{

  final List<Movies>_movie =movieList;
  List<Movies>get data=>_movie;

  final List<Movies> _whislist=[];
  List<Movies> get toWislist=>_whislist;

   void addToWhishList(Movies movefromMainPage){
     _whislist.add(movefromMainPage);
     notifyListeners();
   }


   void RemoveFromWhisList(Movies removeMovie){
     _whislist.remove(removeMovie);
     notifyListeners();
   }

}
