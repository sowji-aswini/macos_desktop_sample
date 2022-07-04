import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_desktop_flutter/list_data.dart';
import 'package:new_desktop_flutter/mail_status_page.dart';
import 'package:new_desktop_flutter/mails_list_page.dart';
import 'package:new_desktop_flutter/task_description.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    List<Map> staticData = MyData.data;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            Expanded(
                flex: 1,
                child: MailsListPage()),
            VerticalDivider(
              color: Colors.black26,
              thickness: 1,
            ),
            Expanded(
              flex: 2,
              child: TaskDescriptionPage(),
            ),
            VerticalDivider(
              color: Colors.black26,
              thickness: 1,
            ),
            Expanded(
              flex: 1,
              child: MailStatusPage(),
            )
          ],
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
