import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutPrivacy extends StatelessWidget {
  const AboutPrivacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff606060),
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Developed by Adham Eldeibany',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purple),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
