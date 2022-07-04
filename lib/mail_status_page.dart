import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MailStatusPage extends StatefulWidget {
  const MailStatusPage({Key? key}) : super(key: key);

  @override
  State<MailStatusPage> createState() => _MailStatusPageState();
}

class _MailStatusPageState extends State<MailStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? 20.0 : 0, left: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Status'),
                  Container(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('In Progress'),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Issue Type'),
                  formFieldValue(label: 'Story '),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Priority '),
                  formFieldValue(label: 'High '),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Assignee'),
                  formFieldValue(label: 'Avinash '),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Labels'),
                  formFieldValue(label: 'None'),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Fix Versions'),
                  formFieldValue(label: 'None '),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Sprint'),
                  formFieldValue(label: 'VA Sprint 5'),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Original Estimate'),
                  formFieldValue(label: 'None'),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Story Point estimate'),
                  formFieldValue(label: 'Story '),
                  SizedBox(
                    height: 10,
                  ),
                  formFieldLabel(label: 'Reporter'),
                  formFieldValue(label: 'Karthik '),
                ]),
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
