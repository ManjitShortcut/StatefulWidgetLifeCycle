import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
    
  Lifecycle() {
    print("constructor content");
  }
  @override
  _LifecycleState createState(){
    print(" create State newtrnsaction widget");
    return _LifecycleState();
  }  
}
class _LifecycleState extends State<Lifecycle> {
  int count = 0;
  _LifecycleState() {
    print("constructor lifecycle state");
  }
  @override
  void initState() { 
    super.initState();
     // call from webservice or call  data base or initlize your object
     print(" the initstate object");
  }
@override
void dispose() { 
  super.dispose();
  print("dispose method call");
}
 @override
 void didUpdateWidget (Lifecycle oldWidget) {
   print(" did update widget");
   super.didUpdateWidget(oldWidget);
 }
  @override
  Widget build(BuildContext context) {
        return Container(
          child: Column(children: <Widget>[
            Text(count.toString()),
            FlatButton(onPressed:(){
              setState(() {
                this.count ++;
              });
            }, child: Text("click me"),
            )
      ],),
    );
  }
}
// lifecycle of a widget is 
// 1.First invoke constructor ;
// 2. initState()
// 3. build()
// 4. setState()
// 5. didUpdateWidget()  
// 5. build()
// 6. dispose()
