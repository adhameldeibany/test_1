import 'package:chats_app/about_privacy.dart';
import 'package:flutter/material.dart';
import 'package:chats_app/image_picker.dart';
import 'package:chats_app/second_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 5,
        title: Text(
          'CHATS',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              )),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          chat_message_templete('assets/images/img2.jpg', 'Ahmed',
              'How are you ?', '12:36 AM', size),
          chat_message_templete('assets/images/img1.jpg', 'Mahmoud',
              'Where are you ?', '2:40 PM', size),
          chat_message_templete(
              'assets/images/img3.jpg', 'Maya', 'At home', '9:23 PM', size),
          chat_message_templete(
              'assets/images/img4.jpg', 'Yara', 'See you', '12:56 PM', size),
          chat_message_templete(
              'assets/images/img5.jpg', 'Ramy', 'Good news', '7:48 AM', size),
          chat_message_templete(
              'assets/images/img6.jpg', 'Joe', 'dont worry', '5:20 PM', size),
        ],
      ),
      floatingActionButton: InkWell(

        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Camera(
                      title: '',
                    )));
          },
          child: Icon(Icons.camera_alt_outlined),
          backgroundColor: Colors.purple,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              accountName: Text(
                'Adham Eldeibany',
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                'adhameldeibany1@gmail.com',
                style: TextStyle(fontSize: 15),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/img7.jpg',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPrivacy()));
              },
            ),
          ],
        ),
      ),
    );
  }

  // lower chatName
  //upper ChatName
  // Widget chat_message_templete = Container(
  // arguments or pramerters

  Widget chat_message_templete(String userImage, String chatName,
      String message, String time, Size size) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffcbcbcb),
      ),
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              width: size.width * 0.2,
              height: size.width * 0.17,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  userImage,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Container(
              width: size.width * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          chatName,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      message,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
