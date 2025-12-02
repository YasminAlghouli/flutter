import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fancy Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
       
      ),
      home: const FancyPage(),
    );
  }
}

class FancyPage extends StatelessWidget {
  const FancyPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFcfefff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
            child: Column(
              children: [
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ColoredSquareButton(label: 'A', color: Color(0xFFe75454)),
                    ColoredSquareButton(label: 'B', color: Color(0xFFf2a024)),
                    ColoredSquareButton(label: 'C', color: Color(0xFFf7d13a)),
                  ],
                ),

                const SizedBox(height: 24),

                // --- صندوق Fancy Section ---
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFcfcff0).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 12.0),
                  child: Column(
                    children: [
                      const Text(
                        'Fancy Section',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF274A9E),
                        ),
                      ),
                      const SizedBox(height: 18),

                     
                      Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: const Color(0xFFd6cfee),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Wrap(
                            spacing: 18,
                            runSpacing: 18,
                            alignment: WrapAlignment.center,
                            children: [
                              numberTile('1', Color(0xFF6b3fb8)),
                              numberTile('2', Color(0xFF9c2fb8)),
                              numberTile('3', Color(0xFF7a4aa9)),
                              numberTile('4', Color(0xFFa355b8)),
                              numberTile('5', Color(0xFFbfa3d9)),
                              numberTile('6', Color(0xFFd77fbf)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // --- Info Cards عنوان ---
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Info Cards',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF274A9E),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // --- صف البطاقات الثلاث ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: infoCard('23', 'Active', Color(0xFF0ea57a))),
                    const SizedBox(width: 14),
                    Expanded(child: infoCard('15', 'Pending', Color(0xFFf0a800))),
                    const SizedBox(width: 14),
                    Expanded(child: infoCard('7', 'Completed', Color(0xFF2a9d3b))),
                  ],
                ),

                // مساحة أسفل
                SizedBox(height: width * 0.12),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
  Widget infoCard(String number, String label, Color numberColor) {
    return Container(
      height: 98,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: numberColor,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF6b817f),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
  Widget numberTile(String num, Color color) {
    return Container(
      width: 68,
      height: 68,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          num,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


class ColoredSquareButton extends StatelessWidget {
  final String label;
  final Color color;

  const ColoredSquareButton({
    super.key,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 46,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}