import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        leading: const Text(""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/pp okarun.jpeg"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo Okarun",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Turbo Baba Transform",
                        style: TextStyle(fontSize: 16, color: Colors.grey))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome to", style: TextStyle(fontSize: 20)),
                Text(
                  "QR Scanner & Generator",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                BuildButton(
                    icon: Icons.qr_code_2,
                    label: "Create",
                    iconColor: Colors.white,
                    backgroundColor: const Color(0xFF553FB8),
                    onTap: () {
                      Navigator.pushNamed(context, '/create');
                    }),
                BuildButton(
                    icon: Icons.qr_code_scanner,
                    label: "Scan",
                    iconColor: Colors.white,
                    backgroundColor: const Color(0xFF553FB8),
                    onTap: () {
                      Navigator.pushNamed(context, '/scan');
                    }),
                BuildButton(
                    icon: Icons.send_rounded,
                    label: "Send",
                    iconColor: Colors.white,
                    backgroundColor: const Color(0xFF553FB8),
                    onTap: () {}),
                BuildButton(
                    icon: Icons.print,
                    label: "Print",
                    iconColor: Colors.white,
                    backgroundColor: const Color(0xFF553FB8),
                    onTap: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.backgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170, // Lebar tetap untuk setiap tombol
        height: 170, // Tinggi tetap untuk setiap tombol
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor, // Warna latar ikon
                borderRadius: BorderRadius.circular(12), // Sudut membulat ikon
              ),
              padding: const EdgeInsets.all(35),
              child: Icon(
                icon,
                color: iconColor, // Warna ikon
                size: 40, // Ukuran ikon lebih besar
              ),
            ),
            const SizedBox(height: 15), // Jarak antara ikon dan teks
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16, // Ukuran teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}
