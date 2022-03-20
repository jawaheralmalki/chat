import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const id = "chat_Screen";
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(children: [
          Image.asset(
            'images/chat.png',
            height: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("MessageMe"),
        ]),
        actions: [
          IconButton(
            onPressed: () {
              // add here logout funtion
            },
            icon: const Icon(
              Icons.close,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.orange, width: 2),
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    hintText: 'write your message',
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("Send"))
            ]),
          ),
        ],
      )),
    );
  }
}
