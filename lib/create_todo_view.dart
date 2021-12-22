import 'package:flutter/material.dart';


class CreateToDo extends StatelessWidget {
  const CreateToDo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
      title: const Text("Create To-Do"),
   ),   
    body:ListView(
       children: [
         TextFormField(
           validator: (value){
             if(value!.isEmpty){
               return"This Filed must not be empty";
             }
           },
            decoration:const InputDecoration(label: Text("Title")),
       ),
      const  SizedBox(
         height:100,
       ),
        TextFormField(
          validator: (value){
            if (value!.isEmpty){
              return"This Field must not be empty";
            }
          },
         
       decoration:const InputDecoration(label: Text("Description")),
       ),
          Row(
            children: [
              Expanded(
              child: TextFormField(
               validator:(value){
            if (value!.isEmpty){
              return"This Field must not be empty";
            }
          },
                 decoration:const InputDecoration(label: Text("Date" )),
                 ),
            ),
               const SizedBox(
               width : 30,
               ),
                Expanded(
                child: TextFormField(
                 decoration:const InputDecoration(label: Text("Time")),
                 ) ),
            
            ]),
            Padding(
              padding: const EdgeInsets.only(top:20, left: 90, right: 90),
              child: TextButton(onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
               child: Text('Create', style: TextStyle(color: Colors.white,),)
               ),
            )
          ],
          ),
        );
         
      
      
  }
}