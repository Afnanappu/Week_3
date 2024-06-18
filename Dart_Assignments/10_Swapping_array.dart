// 10. Write a program to interchange the values of two arrays.

import 'dart:io';

int main(){

  List<int> list1 = [], list2 = [];
  int limit;

  stdout.write("Enter the limit: ");
  String input = stdin.readLineSync()!;
  try{
    limit = int.parse(input);

  } 
  catch(e){
    print("Invalid limit, try again! ");
    return 1;
  }
  print("Enter first list elements: ");
  for(int i = 0; i<limit;i++){
    list1.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter second list elements: ");
  for(int i = 0; i<limit;i++){
    list2.add(int.parse(stdin.readLineSync()!));
  }
  print(list1);
  print(list2);


return 0;
}