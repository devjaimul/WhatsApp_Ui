import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/views/message_screen.dart';
import 'package:whatsapp/views/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> info = [
    {
      "time": "10.05 AM",
      "name": "Taylor Swift",
      "status": "I'm currently working on my new album!",
      "pic":
          "https://imgs.search.brave.com/8Kefpw_06sJQ3R4E9FbA7iH9QvQjcyxdhg3IxQcDkSQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtbWF0/dHktaGVhbHktZ2V0/dHlpbWFnZXMtMTI1/MDIyMTU3MC02NDVl/NDZlYmI0MTcyLmpw/Zz9jcm9wPTAuNDU3/eHc6MC45MTN4aDsw/LjAzMDR4dywwLjAy/MjR4aCZyZXNpemU9/MzYwOio"
    },
    {
      "time": "9.55 PM",
      "name": "Justin Bieber",
      "status": "Just released a new single, check it out!",
      "pic":
          "https://imgs.search.brave.com/MWjuOJ-uyvvp-uHmgt1fvajWfSQOUsHUEJhxp0G78Go/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I5L2Fk/L2I5L2I5YWRiOWQx/NTVjZjJmNmEzMWJh/YzVlOTMwMmE2MGM1/LmpwZw"
    },
    {
      "time": "12.25 PM",
      "name": "Selena Gomez",
      "status": "Currently filming a new movie, stay tuned!",
      "pic":
          "https://imgs.search.brave.com/QnpSoscIIPC9bnnHLSyjtjBdijbGULHO8XHf6BF6qeQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlpURTBOVGRo/TkdRdE9EWTJNQzAw/TkdWakxUazJOall0/WWpNd01tUmpPVGcy/TnpOaFhrRXlYa0Zx/Y0dkZVFYSm9ZVzV1/WVdnQC5qcGc"
    },
    {
      "time": "1.05 AM",
      "name": "Ariana Grande",
      "status": "Excited to announce my upcoming tour dates!",
      "pic":
          "https://imgs.search.brave.com/SKtbeUm429itC4LKqIwVNsXJKSGtKq1Y0OkMhhADuhA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5hbGx1cmUuY29t/L3Bob3Rvcy82NGRm/YTYzOTY0NjZiMmQy/Mjg5NzRjYWMvMTox/L3dfMzU0LGNfbGlt/aXQvYXJpYW5hJTIw/Z3JhbmRlJTIwcmVt/JTIwZm91bmRhdGlv/biUyMGxhdW5jaC5q/cGc"
    },
    {
      "time": "2.51 PM",
      "name": "Ed Sheeran",
      "status": "Just released a new music video, go check it out!",
      "pic":
          "https://imgs.search.brave.com/tt5wz3_5iwAUMqIsWLpULZpnEO1QMiWmeXUXfDlNTok/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuaGVsbG9tYWdh/emluZS5jb20vaG9y/aXpvbi9sYW5kc2Nh/cGUvOWJjMGFhNTIy/YzYzLWVkLXNoZWVy/YW4tYXQtZ3JhbW15/cy5qcGc"
    },
    {
      "time": "3.50 PM",
      "name": "Drake",
      "status": "Currently on tour, come see me!",
      "pic":
          "https://imgs.search.brave.com/yLeqTslLr3l-eBHp0UnX6eUfPC6dQXEhmGCdht5NpB8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDc3/OTY3NDEwL3Bob3Rv/L2F0bGFudGEtZ2Et/ZHJha2UtcGVyZm9y/bXMtb25zdGFnZS1h/dC1ob3QtMTA3LTkt/YmlydGhkYXktYmFz/aC1ibG9jay1zaG93/LWF0LXBoaWxsaXBz/LWFyZW5hLW9uLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1i/ZnB5M080ZzhyakU3/OGVfaW92ek11ekQ5/ZlBIdHhVd0VTODBn/MHlLVE5zPQ"
    },
    {
      "time": "6.05 AM",
      "name": "Rihanna",
      "status": "Working on new music, can't wait for you to hear it!",
      "pic":
          "https://imgs.search.brave.com/v8Tf1VyQPIjXCIqPzUmnPUA0-BboPIFi79d4CIMiiig/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9wZW9w/bGUuY29tL3RobWIv/YkstTTlaV2pJWk5V/THI0R0FUWV9SbVpD/WFlBPS8xNTAweDAv/ZmlsdGVyczpub191/cHNjYWxlKCk6bWF4/X2J5dGVzKDE1MDAw/MCk6c3RyaXBfaWNj/KCk6Zm9jYWwoNTE3/eDA6NTE5eDIpL3Jp/aGFubmEtbGlmZS1p/bi1waWNzLTIwMDcw/NDAxXzk3LTI0ZmY3/M2U5MzY4MjQ2OGZh/MTkwZDlhMjdhZGZm/MWEyLmpwZw"
    },
    {
      "time": "11.23 PM",
      "name": "Kanye West",
      "status": "Excited to announce my new fashion line!",
      "pic":
          "https://imgs.search.brave.com/rK1RanPgmi9-J1oLRvTqVgUP4ztdhpCjYJ9Wo8hq84g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly92YXJp/ZXR5LmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMi8xMC9L/YW55ZS1XZXN0LTQu/anBnP3c9MTAwMCZo/PTU2MyZjcm9wPTE"
    },
    {
      "time": "4.09 AM",
      "name": "Beyoncé",
      "status": "Currently working on a new project, stay tuned!",
      "pic":
          "https://imgs.search.brave.com/sPkRLC2zBAA2N_nA_N368Z323B8MuKgKJUi7aO0A9lk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5waXRjaGZvcmsu/Y29tL3Bob3Rvcy82/NjBiMDQ4MDE5OWYy/ZGI3N2FmZWY0MmUv/MTY6OS93XzgwMCxo/XzQ1MCxjX2xpbWl0/L0JleW9uY2UuanBn"
    },
    {
      "time": "12.11 AM",
      "name": "Lady Gaga",
      "status": "Excited to announce my upcoming album release!",
      "pic":
          "https://imgs.search.brave.com/7ztWTi2tIIjNqHz5ItguBaom-cIJdBIuuiBDArFqK9o/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2ViLzY5/L2RjL2ViNjlkYzJm/OGU1MmJlZDgzMzdm/ZWFmMWU3YjI1N2M3/LmpwZw"
    },
    {
      "time": "2.33 AM",
      "name": "Drake",
      "status": "Currently on tour, come see me!",
      "pic":
          "https://imgs.search.brave.com/yLeqTslLr3l-eBHp0UnX6eUfPC6dQXEhmGCdht5NpB8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDc3/OTY3NDEwL3Bob3Rv/L2F0bGFudGEtZ2Et/ZHJha2UtcGVyZm9y/bXMtb25zdGFnZS1h/dC1ob3QtMTA3LTkt/YmlydGhkYXktYmFz/aC1ibG9jay1zaG93/LWF0LXBoaWxsaXBz/LWFyZW5hLW9uLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1i/ZnB5M080ZzhyakU3/OGVfaW92ek11ekQ5/ZlBIdHhVd0VTODBn/MHlLVE5zPQ"
    },
    {
      "time": "6.45 PM",
      "name": "Rihanna",
      "status": "Working on new music, can't wait for you to hear it!",
      "pic":
          "https://imgs.search.brave.com/v8Tf1VyQPIjXCIqPzUmnPUA0-BboPIFi79d4CIMiiig/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9wZW9w/bGUuY29tL3RobWIv/YkstTTlaV2pJWk5V/THI0R0FUWV9SbVpD/WFlBPS8xNTAweDAv/ZmlsdGVyczpub191/cHNjYWxlKCk6bWF4/X2J5dGVzKDE1MDAw/MCk6c3RyaXBfaWNj/KCk6Zm9jYWwoNTE3/eDA6NTE5eDIpL3Jp/aGFubmEtbGlmZS1p/bi1waWNzLTIwMDcw/NDAxXzk3LTI0ZmY3/M2U5MzY4MjQ2OGZh/MTkwZDlhMjdhZGZm/MWEyLmpwZw"
    },
    {
      "time": "8.52 AM",
      "name": "Kanye West",
      "status": "Excited to announce my new fashion line!",
      "pic":
          "https://imgs.search.brave.com/rK1RanPgmi9-J1oLRvTqVgUP4ztdhpCjYJ9Wo8hq84g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly92YXJp/ZXR5LmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMi8xMC9L/YW55ZS1XZXN0LTQu/anBnP3c9MTAwMCZo/PTU2MyZjcm9wPTE"
    },
    {
      "time": "7.34 PM",
      "name": "Beyoncé",
      "status": "Currently working on a new project, stay tuned!",
      "pic":
          "https://imgs.search.brave.com/sPkRLC2zBAA2N_nA_N368Z323B8MuKgKJUi7aO0A9lk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5waXRjaGZvcmsu/Y29tL3Bob3Rvcy82/NjBiMDQ4MDE5OWYy/ZGI3N2FmZWY0MmUv/MTY6OS93XzgwMCxo/XzQ1MCxjX2xpbWl0/L0JleW9uY2UuanBn"
    },
    {
      "time": "4.60 AM",
      "name": "Justin Bieber",
      "status": "Just released a new single, check it out!",
      "pic":
          "https://imgs.search.brave.com/MWjuOJ-uyvvp-uHmgt1fvajWfSQOUsHUEJhxp0G78Go/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I5L2Fk/L2I5L2I5YWRiOWQx/NTVjZjJmNmEzMWJh/YzVlOTMwMmE2MGM1/LmpwZw"
    },
    {
      "time": "2.45 PM",
      "name": "Selena Gomez",
      "status": "Currently filming a new movie, stay tuned!",
      "pic":
          "https://imgs.search.brave.com/QnpSoscIIPC9bnnHLSyjtjBdijbGULHO8XHf6BF6qeQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlpURTBOVGRo/TkdRdE9EWTJNQzAw/TkdWakxUazJOall0/WWpNd01tUmpPVGcy/TnpOaFhrRXlYa0Zx/Y0dkZVFYSm9ZVzV1/WVdnQC5qcGc"
    },
    {
      "time": "3.56 PM",
      "name": "Ariana Grande",
      "status": "Excited to announce my upcoming tour dates!",
      "pic":
          "https://imgs.search.brave.com/SKtbeUm429itC4LKqIwVNsXJKSGtKq1Y0OkMhhADuhA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5hbGx1cmUuY29t/L3Bob3Rvcy82NGRm/YTYzOTY0NjZiMmQy/Mjg5NzRjYWMvMTox/L3dfMzU0LGNfbGlt/aXQvYXJpYW5hJTIw/Z3JhbmRlJTIwcmVt/JTIwZm91bmRhdGlv/biUyMGxhdW5jaC5q/cGc"
    },
    {
      "time": "1.39 AM",
      "name": "Ed Sheeran",
      "status": "Just released a new music video, go check it out!",
      "pic":
          "https://imgs.search.brave.com/tt5wz3_5iwAUMqIsWLpULZpnEO1QMiWmeXUXfDlNTok/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuaGVsbG9tYWdh/emluZS5jb20vaG9y/aXpvbi9sYW5kc2Nh/cGUvOWJjMGFhNTIy/YzYzLWVkLXNoZWVy/YW4tYXQtZ3JhbW15/cy5qcGc"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: CupertinoColors.systemBlue.withOpacity(0.1),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF0a5b56),
            focusColor: const Color(0xFF0a5b56).withOpacity(0.5),
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ),
            //shape: CircleBorder(),
          ),
          appBar: AppBar(
            backgroundColor: const Color(0xFF0a5b56),
            title: const Text(
              'WhatsAppPPP',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.7),
                  )),
              PopupMenuButton(
                color:const Color(0xFF212121),
                iconColor: Colors.white.withOpacity(0.7),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("New Group",style: TextStyle(color: Colors.white)),
                  ),
                   PopupMenuItem(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen(),));
                    },
                    value: 2,
                    child: const Text("Setting",style: TextStyle(color: Colors.white)),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Log Out",style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.grey,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Center(child:  Icon(Icons.camera_alt_outlined,color: Colors.white.withOpacity(0.7),size: 80,)),
            //chats
            ListView.builder(
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessageScreen(
                            name: info[index]['name'],
                            image: info[index]['pic'],
                            activeStatus: info[index]['time'],

                          ),
                        ));
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(info[index]['pic']),
                  ),
                  title: Text(
                    info[index]["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text(
                    info[index]['status'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                  trailing: index % 3 == 0
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              info[index]['time'],
                              style: const TextStyle(color: Color(0xFF1AC668)),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF1AC668),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: index % 2 == 0
                                      ? const Text(
                                          '2',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : index % 3 == 0
                                          ? const Text(
                                              '3',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          : const Text(
                                              '5',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              info[index]['time'],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                );
              },
            ),
            //status
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.camera_alt_outlined,color: Colors.white.withOpacity(0.6),),
                  title:const Text(
                    "Status",
                    style:  TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ) ,
                  trailing: Icon(Icons.add,color: Colors.white.withOpacity(0.6),),
                ),
                Expanded(

                  child: ListView.builder(
                    itemCount: info.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                  
                        leading:index%2==0? Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey.shade800,width: 3)
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(info[index]['pic']),
                          ),
                        ):Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.teal,width: 3)
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(info[index]['pic']),
                          ),
                        ),
                        title: Text(
                          info[index]["name"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle:index%2==0? Text(
                          "Click here to know",
                          style: TextStyle(color: Colors.white.withOpacity(0.7)),
                        ): Text(
                          "See Story",
                          style: TextStyle(color: Colors.white.withOpacity(0.7)),
                        ),
                  
                      );
                    },
                  ),
                ),
              ],
            ),
            //calls
            ListView.builder(
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(info[index]['pic']),
                  ),
                  title: Text(
                    info[index]["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text(
                    "you missed a call, ${info[index]['time']} ",
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                  trailing: index % 3 == 0
                      ? Icon(Icons.call_rounded,color: Colors.white.withOpacity(.8),)
                      : Icon(Icons.video_call_outlined,color: Colors.white.withOpacity(.8),),
                );
              },
            ),
          ])),
    );
  }
}
