import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color telegramBlue = Color(0xFF2AABEE);
  static const Color telegramDark = Color(0xFF517DA2);


  Widget _actionButton(IconData icon, String label) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Icon(icon, color: telegramBlue, size: 26),
              const SizedBox(height: 6),
              Text(
                label,
                style: const TextStyle(fontSize: 12, color: telegramBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _infoTile(String value, String label, {IconData? icon}) {
    return ListTile(
      leading: icon != null
          ? Icon(icon, color: Colors.grey[600])
          : const SizedBox(width: 24),
      title: Text(value, style: const TextStyle(fontSize: 16)),
      subtitle: Text(label, style: TextStyle(color: Colors.grey[600])),
      onTap: () {},
    );
  }


  Widget _menuTile(IconData icon, String title, {String? trailing}) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[600]),
      title: Text(title),
      trailing: trailing != null
          ? Text(trailing, style: TextStyle(color: Colors.grey[600]))
          : null,
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 48, bottom: 24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [telegramBlue, telegramDark],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 49,
                      backgroundColor: Color(0xFF7E57C2),
                      child: Text(
                        "NL",
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "online",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),

 
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  _actionButton(Icons.chat_bubble_outline, "Message"),
                  _actionButton(Icons.notifications_off_outlined, "Mute"),
                  _actionButton(Icons.call_outlined, "Call"),
                  _actionButton(Icons.videocam_outlined, "Video"),
                ],
              ),
            ),
            const SizedBox(height: 8),


            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Text(
                      "Account",
                      style: TextStyle(
                        color: telegramBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  _infoTile("+62 812 3456 7890", "Mobile",
                      icon: Icons.info_outline),
                  const Divider(height: 1, indent: 72),
                  _infoTile("@username_kamu", "Username"),
                  const Divider(height: 1, indent: 72),
                  _infoTile("Mahasiswa | Suka kuliner & coding", "Bio"),
                ],
              ),
            ),
            const SizedBox(height: 8),


            Container(
              color: Colors.white,
              child: Column(
                children: [
                  _menuTile(Icons.notifications_none, "Notifications and Sounds"),
                  const Divider(height: 1, indent: 72),
                  _menuTile(Icons.lock_outline, "Privacy and Security"),
                  const Divider(height: 1, indent: 72),
                  _menuTile(Icons.storage_outlined, "Data and Storage"),
                  const Divider(height: 1, indent: 72),
                  _menuTile(Icons.language, "Language", trailing: "Indonesia"),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}