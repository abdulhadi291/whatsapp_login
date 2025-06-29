import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/custom_widget.dart';

class ChatView extends StatelessWidget {
ChatView({super.key});



List chats = [
  {
    "name" : 'Hadi',
    "message" : 'Hello' ,
},
 {
    "name" : 'Moazzam',
    "message" : 'Nashta?' ,
},
 {
    "name" : 'Mustafa',
    "message" : 'ID?' ,
}, {
    "name" : 'Azhar',
    "message" : 'what scope' ,
},
 {
    "name" : 'Ali',
    "message" : 'kdr' ,
}
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Chats", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search.',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.grey),
            ),
          ),
          Expanded(
            child:ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context,i){
                return CustomChatTile(Colors.red,
                "${chats[i]['name']}",
                "${chats[i]['message']}" , 
                Icons.done_all_outlined,
                 "7:62",
                 context,
                 );
              },
            )
          ),
        ],
      ),
    );
  }
}




//  ListView(
//               children: [
//                 CustomChatTile(Colors.greenAccent, "Ahad", "kia hua",
//                     Icons.done_all_outlined, "6:12"),
//                 CustomChatTile(
//                     Colors.lightBlue, "Ali", "hn?", Icons.check, "7:12"),
//                 CustomChatTile(const Color.fromARGB(255, 140, 244, 3), "Owais",
//                     "kdr h?", Icons.done_all_outlined, "7:62"),
//                 CustomChatTile(const Color.fromRGBO(115, 3, 244, 1), "Hadi",
//                     "aja?", Icons.check, "8:12"),
//                 CustomChatTile(const Color.fromARGB(255, 1, 6, 8), "Zain",
//                     "Class kdr h?", Icons.done_all_outlined, "7:12"),
//                 CustomChatTile(
//                     const Color.from(
//                         alpha: 1, red: 0.055, green: 0.055, blue: 0.055),
//                     "Hamza",
//                     "KFC Khayega",
//                     Icons.done_all_outlined,
//                     "3:12"),
//                 CustomChatTile(const Color.fromRGBO(247, 227, 162, 1), "Usman",
//                     "kia banega tera", Icons.done_all_outlined, "7:42"),
//                 CustomChatTile(const Color.fromRGBO(28, 1, 78, 1), "Azhar",
//                     "What Scope", Icons.done_all_outlined, "7:12"),
//                 CustomChatTile(
//                     const Color.from(alpha: 1, red: 0.969, green: 0, blue: 1),
//                     "Moazzam",
//                     "Nashta?",
//                     Icons.check,
//                     "1:12"),
//                 CustomChatTile(const Color.fromRGBO(182, 238, 235, 1), "Taha",
//                     "ajao khana khilaun", Icons.done_all_outlined, "9:12"),
//                 CustomChatTile(const Color.fromRGBO(252, 120, 79, 1), "Mustafa",
//                     "Id?", Icons.check, "10:12"),
//               ],
//             ),