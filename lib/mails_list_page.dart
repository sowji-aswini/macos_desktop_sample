import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_desktop_flutter/list_data.dart';

class MailsListPage extends StatefulWidget {
  const MailsListPage({Key? key}) : super(key: key);

  @override
  State<MailsListPage> createState() => _MailsListPageState();
}

class _MailsListPageState extends State<MailsListPage> {
  @override
  Widget build(BuildContext context) {
    List<Map> staticData = MyData.data;
    return Container(
     // padding: EdgeInsets.only(top: kIsWeb ? 10.0 : 0, left: 20.0),
      child: SafeArea(
        child: Container(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            //padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              Map data = staticData[index];
              return ListTile(
                title: Text(data['name']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        formFieldLabel(label: 'VA-450'),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.amp_stories_outlined,
                          color: Colors.blueAccent,
                          size: 15,
                        ),
                        Text(
                          'IN PROGRESS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 12.0),
                        )
                      ],
                    )
                  ],
                ),
                leading: Icon(
                  Icons.task,
                  color: Colors.green,
                ),
                //   trailing: Text(
                //   data['rating'],
                //   style: TextStyle(
                //       color: Colors.orange, fontSize: 15),
                // ),
              );
            },
            itemCount: 9,
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

  Widget formFieldValue({required String label}) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 15.0, color: Colors.black),
    );
  }
}
