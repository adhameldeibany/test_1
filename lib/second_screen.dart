import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.purple,
        title: Text(
          'Second Screen',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                my_message_templete(size, 'How are u ?', true),
                receive_message_templete(size, 'Fine', true),
                my_message_templete(size, 'Where are you from ?', true),
                receive_message_templete(size, 'Egypt', true),
                receive_message_templete(size, 'And you ?', true),
                my_message_templete(size, 'France', true),
                receive_message_templete(size, 'Good', true),
              ],
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC7C7C7),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            child: TextFormField(
                        decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type your message here...'),
                      ),
                          )),
                      Container(
                        color: Colors.purple,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 1,
                          child: Icon(
                            Icons.send,
                            color: Color(0xffDCDCDC),
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget my_message_templete(Size size, String message, bool hasTail) {
    return BubbleSpecialThree(
      text: message,
      textStyle: TextStyle(color: Colors.white, fontSize: 20),
      color: Color(0xff8f5d9b),
      tail: hasTail,
      isSender: true,
    );
  }

  Widget receive_message_templete(Size size, String message, bool hasTail) {
    return BubbleSpecialThree(
      text: message,
      textStyle: TextStyle(fontSize: 20),
      color: Color(0xFFE8E8EE),
      tail: hasTail,
      isSender: false,
    );
  }
}
