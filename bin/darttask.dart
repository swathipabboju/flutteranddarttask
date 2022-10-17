import 'package:darttask/darttask.dart' as darttask;

void main() {
  print('Hello world');
  String name="Swathi";
  print(name);
  var age=20;
  print(age);
  List<String> names=["swathi","manu","srikanth","sai"];
  print(names);
  print(names[1]);

  List marks=[];
  var num=30;

 for (int i = 0; i <5; i++) {
   num+=10;
   marks.add(num);
 }
 print("list using for loop $marks");

 var details={"name":"swathi","age":21,"cgpa":8.0};
print("map values $details");
 var ky;
 ky=details.keys;
 print(ky);
 var val;
 val=details.values;
 print(val);

 




}