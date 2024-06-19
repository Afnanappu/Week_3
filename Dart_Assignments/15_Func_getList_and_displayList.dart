// 15. Write a program to accept an array and display it on the console using functions

import 'dart:io';

int main() {
  int limit = 1;
  List<int> list;
  (list,limit) = getList(limit);
  displayList(list, limit);

  return 0;
}

//function to get list.
(List<int>, int) getList( int limit, [String name = "list"]) {
  List<int> list = [];
  stdout.write("Enter the limit: ");
  try {
    limit = int.parse(stdin.readLineSync() ?? "0");
  }
  catch(e){
    print("Limit is empty,default is 1");
  }
  try{
    stdout.write("Enter the values of $name: ");
  for (int i = 0; i < limit; i++) {
    list.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  } catch(e){
    print("Enter line by line");
  }

  return (list, limit);
}

void displayList(List<int> list, int limit) {
  try{
    for (int i = 0; i < limit; i++) {
    stdout.write("${list[i]}  ");
  }
  } catch(e){
    print("List is empty.");
  }
}
