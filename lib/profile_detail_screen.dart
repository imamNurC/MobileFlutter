import 'package:flutter/material.dart';

class ProfileScreenDetail extends StatelessWidget {
  const ProfileScreenDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
              // bottom: TabBar(tabs: [Tab(text: ,)]),
            ),
            body: TabBarView(children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile_picture.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('john.doe@example.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+1 234 567 890'),
                    ),
                  ],
                ),
              ),
              Center(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Follower 1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Follower 2'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Follower 3'),
                    ),
                    // Add more ListTiles for additional followers
                  ],
                ),
              ),
              Center(
                child: Text('Tidak ada Follower'),
              )
            ])));
  }
}
