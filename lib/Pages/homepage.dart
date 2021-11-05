import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import './joinWithCode.dart';
import './new_meeting.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Gitam Connect",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Public Rooms",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 450,
              child: ResponsiveGridList(
                horizontalGridMargin: 50,
                minItemWidth: 120,
                children: List.generate(
                    20,
                    (index) => Container(
                          color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(32),
                            child: Text(
                              '$index',
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        )),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: OutlinedButton.icon(
              onPressed: () {
                Get.to(JoinWithCode());
              },
              icon: Icon(Icons.margin),
              label: Text("Join with a code"),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(color: Colors.black),
                fixedSize: Size(350, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ElevatedButton.icon(
              onPressed: () {
                Get.to(NewMeeting());
              },
              icon: Icon(Icons.add),
              label: Text("New Room"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 30),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ),
          SizedBox(height: 150),
        ]),
      ),
    );
  }
}
