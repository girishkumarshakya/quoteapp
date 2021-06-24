import 'dart:io';

import 'package:Quote_App/Quote_App.dart' as Quote_App;
import 'package:Quote_App/authors.dart';
import 'package:Quote_App/categories.dart';
import 'package:Quote_App/quotes.dart';
import 'package:test/test.dart';

main() {
  stdout.write("Please select from categories");
  List<String> catList = getAllCategories().toList();
  print("=================================================");
  for(var c in catList){
    print("${catList.indexOf(c)+1} $c");
  }
  print("=================================================");
  stdout.write("Enter a number to search ....   ");
  var sel = int.parse(stdin.readLineSync());

  switch(sel){
    case 1:
      var inspirational = getInspirational().toList();
      for(var c in inspirational){
        print("${inspirational.indexOf(c)+1} $c");
      }
      break;

    case 2:
      var motivational = getMotivational().toList();
      for(var c in motivational){
        print("${motivational.indexOf(c)+1} $c");
      }
      break;
    case 3:
      var life = getLife().toList();
      for(var c in life){
        print("${life.indexOf(c)+1} $c");
      }
      break;
    default:
      var all = getAllQuotes().toList();
      for(var c in all){
        print("${all.indexOf(c)+1} $c");
      }
      break;
  }

  print("=================================================");
  stdout.write("Search Any Quote Just type a string ....   ");
  var query = stdin.readLineSync();

  var all = getAllQuotes().toList();

  Iterable<String> it = all.where((element) => element.toLowerCase().contains(query.toLowerCase()));

  for(var c in it){
    print("$c");
  }

  print("=================================================");
  stdout.write("Search Any Quote by Author Name ....   ");
  var authorList = getAllAuthors().toList();
  for(var c in authorList){
    print("${authorList.indexOf(c)+1} $c");
  }
  stdout.write("Name :: ");
  var authorName = stdin.readLineSync();

  Iterable<String> aut_iterable = all.where((element) => element.toLowerCase().contains(authorName.toLowerCase()));

  for(var c in aut_iterable){
    print("$c");
  }

}
