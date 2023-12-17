import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    home:whatsapp() ,
   debugShowCheckedModeBanner: false,
  )

);


List<String> itemList = ['mama','Dad','Billgates','aisha','brother','BSE-6A','mahnoor','abdullah','mama','Dad'];
List<String> itemList2 = ['6:36','5:00','4;15','7:50','3:10','4;20','5:00','4;15','7:50','3:10'];
List<String> itemList3 = ['iam fine','what about you ','okay ','my pleasure','no','aoa','thank you so much ','i will be there at time ','anything else','as you wish okay '];
class whatsapp extends StatelessWidget {


  const whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemBuider;
    return DefaultTabController(length: 4,
    child:  Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Whatsapp'
          ),
        backgroundColor: Colors.teal,
          bottom:TabBar(
            tabs: [
             Icon(Icons.camera_alt),
              Text('chats'),
              Text('status'),
              Text('calls'),
            ],
          ),

            actions:[
              Icon(Icons.search),
              SizedBox(height: 10,),
      PopupMenuButton(itemBuilder:(context,)=>
      [
        PopupMenuItem(
          value:'1' ,
          child:Text('settings'),
        ),
        PopupMenuItem(
          value:'2',
          child:Text('New group'),
        ),
        PopupMenuItem(
          value:'3',
          child:Text('New broadcast'),
        ),
        PopupMenuItem(
          value:'4',
          child:Text('linked devices'),
        ),
        PopupMenuItem(
          value:'5',
          child:Text('starred messages '),
        ),

      ],
      ),

  ]

    ),
        body: TabBarView(
        children: [
        Text('1'),
    ListView.builder(
         itemCount:10,
         itemBuilder :(context,index)  {
           return ListTile(
             leading: CircleAvatar(
               backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
             ),
             title: Text(itemList[index]),
             subtitle: Text(itemList3[index]),
             trailing: Text(itemList2[index]),
           );

         }
    ),


    Text('3'),
          ListView.builder(
              itemCount:10,
              itemBuilder :(context,index)  {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg'),
                  ),
                  title: Text(itemList[index]),
                  subtitle: Text(itemList2[index]),
                  trailing: Icon(Icons.phone),
                );

              }
          ),



        ],
    ),
    )
    );

  }
}






