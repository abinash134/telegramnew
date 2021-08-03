import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:telegramnew/widgets/button.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool notificationstatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Icon(Icons.video_call),
          SizedBox(width: 30.0,),
          Icon(Icons.call),
          SizedBox(width: 30.0,),
          Icon(Icons.more_vert),
          SizedBox(width: 20.0,),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              height:110.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 5.0, 10.0),
                child: Row(

                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('http://www.richmondelementary.com/subsites/Library/pictures/Default%20Images/GenericUser-1-.png'),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  //Image.asset('images/profile.jpg'),
                  SizedBox(width: 30.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Bhai",style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text("last seen recently",style: TextStyle(


                      ),
                      ),
                    ],
                  ),
                    SizedBox(width: 100.0,),
                    Button(),


                  ],
                ),
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
            ),
            Container(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Info",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 15.0,
                            ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("+9199876789",style: TextStyle(

                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Mobile",style: TextStyle(

                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text("I am On Telegram",style: TextStyle(

                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("Bio",style: TextStyle(

                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            ),

                          ],
                        )


                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
            ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Notifications",style: TextStyle(

                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    notificationstatus?Text("On",style: TextStyle(

                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                    ):Text("Off",style: TextStyle(

                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                    ),
                  ],
                ),
                FlutterSwitch(

                  valueFontSize: 25.0,

                  value: notificationstatus,
                  borderRadius: 30.0,
                  padding: 8.0,
                  showOnOff: false,
                  onToggle: (val){
                    setState(() {
                      notificationstatus  = val;
                    });
                  },
                ),
              ],

            ),
          ),
          ],
        ),

      ),
    );
  }
}
