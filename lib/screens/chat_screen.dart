import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';

class ChateScreen extends StatelessWidget {
  const ChateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_left,
                    color: AppColors.bigtextColor,
                  ),
                  SizedBox(
                    height: 60,
                    width: 180,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse 37.png'),
                      ),
                      title: MyText(
                        mytext: 'Olivia Anna',
                        textSize: 14,
                      ),
                      subtitle: MyText(
                        mytext: 'Online',
                        textSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.amber,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.video_call,
                    color: AppColors.bigtextColor,
                  ),
                  Icon(
                    Icons.call,
                    color: AppColors.bigtextColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ChatTile(
                          message: ' this is message $index',
                          isSentByMe: index % 2 == 0);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.buttonColor)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            prefixIcon: Icon(
                              Icons.square_rounded,
                              color: AppColors.buttonColor,
                            ),
                            hintText: 'Type a message',
                            hintStyle: TextStyle(color: Color(0xff8CAAB9)),
                            suffixIcon: Icon(
                              Icons.send,
                              color: AppColors.buttonColor,
                            )),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.mic_rounded,
                        color: AppColors.buttonColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//model
class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.message, required this.isSentByMe});
  final String message;
  final bool isSentByMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      //  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isSentByMe ? AppColors.buttonColor : Colors.grey,
          // borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
