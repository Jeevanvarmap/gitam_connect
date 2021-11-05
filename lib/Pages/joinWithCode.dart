import 'package:flutter/material.dart';
import '../room.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';

class JoinWithCode extends StatefulWidget {
  @override
  _JoinWithCodeState createState() => _JoinWithCodeState();
}

class _JoinWithCodeState extends State<JoinWithCode> {
  final _Controller = TextEditingController();
  bool _validateError = false;

  Future<void> onJoin() async {
    setState(() {
      _Controller.text.isEmpty ? _validateError = true : _validateError = false;
    });
    if (_validateError == false) {
      await _handleCameraAndMic(Permission.microphone);
      await _handleCameraAndMic(Permission.camera);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Room(channelName: _Controller.text),
          ));
    }
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Join Room",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//            Align(
//              alignment: Alignment.topLeft,
//              child: Padding(
//                padding: EdgeInsets.all(10),
//                child: InkWell(
//                  child: Icon(Icons.arrow_back_ios_new_sharp, size: 25),
//                  onTap: Get.back,
//                ),
//              ),
//            ),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Enter room code below",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _Controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    errorText:
                        _validateError ? 'Channel name is mandatory' : null,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                onJoin();
              },
              child: Text("Join"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(50, 30),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
