
import 'package:flutter/material.dart';


class MessageScreen extends StatefulWidget {
  final String name;
  final String image;
  final String activeStatus;
  const MessageScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.activeStatus});
  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List <Map> chatDetails=[
    {
      'message':'hi',
      'is_me':true,
      'time':'7.01 AM',
    },
    {
      'message':'hlw',
      'is_me':false,
      'time':'7.02 AM',
    },
    {
      'message':'how are you?',
      'is_me':true,
      'time':'7.03 AM',
    },
    {
      'message':'I am fine and What about you?',
      'is_me':false,
      'time':'7.04 AM',
    },
    {
      'message':"I'm fine too, what are you doing",
      'is_me':true,
      'time':'7.05 AM',
    },
    {
      'message':'sleeping',
      'is_me':false,
      'time':'7.06 AM',
    },
    {
      'message':'Where are you??',
      'is_me':false,
      'time':'7.06 AM',
    },
    {
      'message':'At my Office',
      'is_me':true,
      'time':'7.08 AM',
    },{
      'message':"Aren't you coming??",
      'is_me':true,
      'time':'7.08 AM',
    },
    {
      'message':'Yeah I am Coming ',
      'is_me':false,
      'time':'7.10 AM',
    },
    {
      'message':'ok Then see you',
      'is_me':true,
      'time':'7.12 AM',
    },
    {
      'message':'ok',
      'is_me':false,
      'time':'7.15 AM',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0a5b56),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
        title: Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                widget.image,
              ),
            ),
            subtitle: Text(
              " Last Seen ${widget.activeStatus}" ,
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call_rounded,
                color: Colors.white,
              )),
          PopupMenuButton(
            color:const Color(0xFF212121),

            iconColor: Colors.white.withOpacity(0.7),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("View Contact",style: TextStyle(color: Colors.white),),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Media,links,and docs",style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Search",style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Mute notificatins",style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Disappearing messages",style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text("Wallpaper",style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text("More",style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
                final data=chatDetails[index];
              return data["is_me"]==true ?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(

                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        constraints: const BoxConstraints(maxWidth: 200),
                        decoration: const BoxDecoration(

                          color: Color(0xFF212121),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            //bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
            
                          ),
                        ),

                        child: Center(child: Text(data['message'],style: const TextStyle(color: Colors.white),)),
                      ),
                      Text(data['time'],style: TextStyle(color: Colors.white.withOpacity(0.8)),),
                    ],
                  ),
            
                ],):
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
            
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        constraints: const BoxConstraints(maxWidth: 200),
                        decoration: const BoxDecoration(
                          color: Color(0xFF0a5b56),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            //bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
            
                          ),
                        ),
                        child: Center(child: Text(data['message'],style: const TextStyle(color: Colors.white),)),
                      ),
                      Text(data['time'],style: TextStyle(color: Colors.white.withOpacity(0.8)),),
                    ],
                  ),
            
                ],);
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF212121),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white.withOpacity(0.7),
                        decoration: InputDecoration(
                          hintText: "Enter your message...",
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                          prefixIcon:Icon(Icons.emoji_emotions_outlined,color: Colors.white.withOpacity(0.6)),
                          suffixIcon: Icon(Icons.link,color: Colors.white.withOpacity(0.6)),
                          border: InputBorder.none,


                            

                        ),

                      ),
                    ),
                  ),
                  
                ),
                const SizedBox(width: 5,),
                const CircleAvatar(
                  backgroundColor:  Colors.teal,
                  child: Icon(Icons.send_outlined,color: Colors.black,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
