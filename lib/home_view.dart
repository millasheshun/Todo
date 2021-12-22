//this will allow you use widgets in your app
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/create_todo_view.dart';

import 'utilities.dart';

//this is the class for 
class My_Task extends StatelessWidget {
  const My_Task({Key? key,}) : super(key: key);

Widget build(BuildContext context) {
 // the Scaffoldis the root for our app
//(appBar )
  return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
   actions:const [
    Icon(Icons.filter_list,color: Colors.deepPurple,),Icon(Icons.search,color: Colors.deepPurple,),
  ],
  title:const Text("My_Task",style: TextStyle(color:Colors.deepPurple,fontSize:30 ),),
  
 // leading makes the it come first
leading:const Center(
  //the circleAvatar is circle where we put images in
  child:   CircleAvatar(
  //backgroundimage is the pictuer in the code
    backgroundImage:NetworkImage("https://scontent.xx.fbcdn.net/v/t1.15752-9/s235x350/257549718_666610984717447_589563390729022379_n.png?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_eui2=AeFeL2_c3Ojk7YzEqT-uNeIItrwkeo8E9EC2vCR6jwT0QMP3lV-hh7t6mkbdkAwKARMWLyo3Hp8__A0h8kk6QNnF&_nc_ohc=dSAQdWFtEfMAX_cLLOa&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=ea33d6ff5b7e8fcbb05d6da32c940d6d&oe=61CF4A3F"),
  // radius is the size of the circleAvatar
   radius: 20,),
),
 ),

// body is main contant of the code
body:ListView(
 
children:const [
 TodoWidget(
    task:"Plan trip to Ghana",
    description:"I will be going to Ghana next week",
    time:"yesterday", 
  ),
   TodoWidget(
    task:"Plan trip to Ghana",
    description:"I will be going to Ghana next week",
    time:"today", 
  ),
  TodoWidget(
    task:"Plan trip to Ghana",
    description:"I will be going to Ghana next week",
    time:"tomorrow", 
  ),
  
],  
),
//floatingActionButton is circle on the bottonSheet 
floatingActionButton:FloatingActionButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return CreateToDo();
  }));
},
child:const Icon(Icons.add,color: Colors.white,size: 35,),),
bottomSheet: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Card(color: Colors.lightBlue[50],
  
    child: Padding(
  
      padding: const EdgeInsets.all(15.0),
  
      child: Row(
  
        children:const [Icon(Icons.check_circle,color: Colors.deepPurple,),
         SizedBox(width: 10,),
        Text("Completed",style: TextStyle(color: Colors.deepPurple),),
       SizedBox(width: 10,),
        Icon(Icons.arrow_drop_down,color: Colors.deepPurple,),
        Spacer(),
       Text("24",style: TextStyle(color: Colors.deepPurple
      ),), ],
  
      ),
  
    ),  
  
  ),
),
  );
}
 }

class TodoWidget extends StatelessWidget {
  const TodoWidget( {
    Key? key,required this.task,required this.description,required this.time, 
  }) : super(key: key);

  final String task;
  final String description;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child:
      ListTile(
        leading:Icon(Icons.check_circle_outline,
        color: paint(time),
        size:20,),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.notifications,
             color: paint(time),
            size: 15,  ),
            Text(time,style: TextStyle(color: paint(time),
            fontSize: 10),)
          ],
        ),
        
        title: Text(task,style: TextStyle(color: Colors.deepPurpleAccent), ),
        subtitle: Text(description),

        ),

    );
  }
}