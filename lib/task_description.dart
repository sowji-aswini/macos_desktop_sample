import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TaskDescriptionPage extends StatefulWidget {
  const TaskDescriptionPage({Key? key}) : super(key: key);

  @override
  State<TaskDescriptionPage> createState() => _TaskDescriptionPageState();
}

class _TaskDescriptionPageState extends State<TaskDescriptionPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      build(context);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final TextEditingController commentController = TextEditingController();

    final List msgs = [
      'Hello Raj',
      'Hi Ravi How are you ',
    ];
    /*
    'I am fine Ravi',
      'what is the stataus of you task',
      'I will finsh the task at end of this week',
      'Sounds good'
     */
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: kIsWeb ? 20.0 : 0, left: 20.0, right: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.note,
                            color: Colors.green,
                          ),
                          Text(
                            'VA_350',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black26),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Vendor Flow - Vendor details summary',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_file,
                          ),
                          Icon(
                            Icons.mail,
                          ),
                          Icon(
                            Icons.link,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'User Story:',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Display the user story send by the manager',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'As Sascha, I want to organize my work, so I can feel more in control. As a manager, I want to be able to understand my colleagues progress, so I can better report our sucess and failures',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'As a manager, I want to be able to understand my colleagues progress, so I can better report our sucess and failures.',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Activity',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Row(
                            children: [
                              Text(
                                'Comments',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ],
                      ),
                      Center(
                          child: Column(
                        children: [
                          Icon(
                            Icons.chat,
                            color: Colors.blueAccent,
                            size: 60,
                          ),
                          formFieldLabel(label: 'Leave the Comment')
                        ],
                      ))
                    ]),
              ),
              Flexible(
                  child: LayoutBuilder(
                      builder: (context, constraints) => Column(
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  height: constraints.maxHeight * 0.75,
                                  child: ListView.builder(
                                    itemCount: msgs.length,
                                    shrinkWrap: true,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: EdgeInsets.only(
                                            left: 14,
                                            right: 14,
                                            top: 10,
                                            bottom: 10),
                                        child: Align(
                                          alignment: (index % 2 == 0
                                              ? Alignment.topLeft
                                              : Alignment.topRight),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: (index % 2 == 0
                                                  ? Colors.grey.shade200
                                                  : Colors.blue[200]),
                                            ),
                                            padding: EdgeInsets.all(16),
                                            child: Text(
                                              msgs[index],
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 10, bottom: 10, top: 10),
                                      height: 60,
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.lightBlue,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: TextField(
                                              controller: commentController,
                                              decoration: InputDecoration(
                                                  hintText: "Write message...",
                                                  hintStyle: TextStyle(
                                                      color: Colors.black54),
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          FloatingActionButton(
                                            onPressed: () => setState(() => msgs
                                                .add(commentController.text)),
                                            child: Icon(
                                              Icons.send,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   alignment: Alignment.bottomCenter,
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //       hintText: 'Add a Comment',
                              //       suffixIcon: IconButton(
                              //         icon: Icon(Icons.send),
                              //         onPressed: () {},
                              //       ),
                              //     ),
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                            ],
                          )))
            ],
          ),
        ),
      ),
    );
  }

  Widget formFieldLabel({required String label}) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
    );
  }
}
/*
ListView.builder(
  itemCount: messages.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 10,bottom: 10),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
          ),
          padding: EdgeInsets.all(16),
          child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
        ),
      ),
    );
  },
),
 */
