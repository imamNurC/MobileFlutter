import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Profile Screen',
            style: TextStyle(color: Colors.deepPurple,
            fontSize: 24, fontWeight: FontWeight.bold ),
          ),
          SizedBox(height: 25,),
          ElevatedButton(onPressed: () {Get.to(ProfileScreen())}, child: Text("Profile Detail"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent),)
        ],
      ),
    );
  }
}