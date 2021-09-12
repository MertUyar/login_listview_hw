import 'package:flutter/material.dart';
import 'package:login_screen_listview/login_screen.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key, required this.userInfos}) : super(key: key);
  final List userInfos;
  @override
  _ListViewScreenState createState() => _ListViewScreenState(userInfos: userInfos);
}

class _ListViewScreenState extends State<ListViewScreen> {
  _ListViewScreenState({required this.userInfos});
  final List userInfos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Center(
              child: Text(
                'Usernames and passwords',
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: userInfos.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(color: Colors.grey, width: 0.1))),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Text(
                                  userInfos[index]["username"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              userInfos[index]["password"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
