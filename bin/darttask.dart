import 'dart:ffi';

import 'package:darttask/darttask.dart' as darttask;

void main() {
  print('Hello world');
    var age=20;
  print(age);

//properties of strings

  //string creation
  String name="   hey,uh!!!! Swathi!! ";
  print(name);


//isempty
print("checking string is empty or not ${name.isEmpty}");

//length
print("length of string ${name.length}");



//split
name.split("!!");
print(name);


//trim
name.trim();
print(name);


//trimleft
name.trimLeft();
print(name);


//trimright
name.trimRight();
print(name);



//touppercase
name.toUpperCase();
print(name);


//tolowercase
name.toLowerCase();
print(name);


















  //creating list
  List<String> names=["swathi","manu","srikanth","sai"];
  print(names);
  
  //list properties
  print(names[1]);

//creating empty list
  List marks=[];
  var num=30;




//add
 for (int i = 0; i <5; i++) {
   num+=10;
   marks.add(num);
 }
 print("list using for loop $marks");


 //instead of for loop we can use map function

 var newlist=marks.map((element) => element+20).toList();
 print("newlist using map function $newlist");


 //length
 print("length of new list $newlist");



 //reverse
 print("reversed newlist ${newlist.reversed} ");


 //first
 print("last element of newlist ${newlist.first}");



 //clear
 newlist.clear();
print("new list is cleared ${newlist}");


//add
newlist.add(100);
print("newlist added with an element after clear $newlist");




//creating map

 Map<String,dynamic> store={"Pens":2,"pencils":4,"eraser":1};
 print("store details using map function $store");

 //map propeties
 //keys
var k=store.keys;
print("keys of store $k");


//values
var v=store.values;
print("values of store $v");


//update
store.update("Pens", (value) => "5");
print("store values updated $store");


//remove
store.remove("eraser");
print("eraser removed from store $store");


//foreach
store.forEach((key, value) 
{
  print("printing key value pairs using forech method");
  print("$key,$value");
 });



print("hey");
}