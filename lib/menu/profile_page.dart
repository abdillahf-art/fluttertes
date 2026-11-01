import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.only(bottom: 20),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 50),
                ),
                SizedBox(height: 10),
                Text(
                  "Nama Lengkap",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "online",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.blue),
                    Text("Message", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.notifications_off_outlined, color: Colors.blue),
                    Text("Mute", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.call_outlined, color: Colors.blue),
                    Text("Call", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.videocam_outlined, color: Colors.blue),
                    Text("Video", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ],
            ),
          ),

          const Divider(),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text("+62 812 3456 7890"),
            subtitle: Text("Mobile"),
          ),
          const ListTile(
            leading: Icon(Icons.alternate_email),
            title: Text("@username_kamu"),
            subtitle: Text("Username"),
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Mahasiswa | Suka kuliner & coding"),
            subtitle: Text("Bio"),
          ),

          const Divider(),
          const ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notifications and Sounds"),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text("Privacy and Security"),
          ),
          const ListTile(
            leading: Icon(Icons.storage_outlined),
            title: Text("Data and Storage"),
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            trailing: Text("Indonesia"),
          ),
        ],
      ),
    );
  }
}