import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<Map> settingDetails=[
    {
      "item":"Account"
    },
    {
      "item":"Privacy"
    },
    {
      "item":"Avatar"
    },
    {
      "item":"Chats"
    },
    {
      "item":"Notifications"
    },
    {
      "item":"Storage and data"
    },
    {
      "item":"App language"
    },
    {
      "item":"Help"
    },
    {
      "item":"Invite a friend"
    },
    {
      "item":"App updates"
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBlue.withOpacity(0.1),
      appBar: AppBar(title: const Text("Setting",style: TextStyle(color: Colors.white),),
        backgroundColor: CupertinoColors.systemBlue.withOpacity(0.2),
        leading: IconButton(onPressed: (){Navigator.pop(context); },icon: const Icon(Icons.arrow_back,color: Colors.white,),),
        actions: const [
          Icon(Icons.search_outlined,color: Colors.white,)
        ],
      ),
      body:  Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
      backgroundImage: NetworkImage("https://imgs.search.brave.com/0f5ltmeHSCFLq8l0lCEI80hF0kp3MV07l6CRfcdNGuk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzI3LzMxLzA3/LzM2MF9GXzIyNzMx/MDcwNF81WDBFQ0w3/cDBkV3pvU2NPTXdX/TnBrUmdQQUU5RUpn/OS5qcGc"),
    ),
            title:const Text(
              "Error",
              style:  TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ) ,
            subtitle: Text('User not found',style: TextStyle(color: Colors.white.withOpacity(0.6)),),
            trailing: const Icon(Icons.qr_code,color: Color(0xFF0a5b56)),
          ),
          Expanded(

            child: ListView.builder(
              itemCount: settingDetails.length,
              itemBuilder: (context, index) {
                return ListTile(


                  leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white.withOpacity(0.6),),
                  title: Text(
                    settingDetails[index]['item'],
                    style:  const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),


                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
