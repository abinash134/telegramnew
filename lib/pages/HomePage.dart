import 'package:flutter/material.dart';
import 'package:telegramnew/pages/ChatPage.dart';
import 'package:telegramnew/widgets/ContactModel.dart';
import 'package:telegramnew/widgets/HomeDrawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,),
          ),
        ],
      ),
      drawer: HomeDrawer(),

      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
        },
        child: ListView.separated(
          itemCount: contacts.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contacts[index].profilePic),

              ),
              title: Text(contacts[index].name),
              subtitle: Text(contacts[index].demomsg),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
        },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(
          Icons.edit,
        ),
      ),
    );

  }
}
