import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  double _boxSize = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Counter"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          // 🔹 Background image
          SizedBox.expand(
            child: Image.asset(
              'lib/assets/logo.png', 
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 Center animated box
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  width: _boxSize,
                  height: _boxSize,
                  decoration: BoxDecoration(
                    color: Colors.pink[200], // light pink color
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$_counter',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Animated Box",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),

          // 🔹 Bottom buttons (line end)
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "minus",
                  backgroundColor: Colors.red,
                  onPressed: () {
                    setState(() {
                      _counter--;
                      _boxSize = (_boxSize - 10).clamp(80, 200);
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 40),
                FloatingActionButton(
                  heroTag: "plus",
                  backgroundColor: Colors.green,
                  onPressed: () {
                    setState(() {
                      _counter++;
                      _boxSize = (_boxSize + 10).clamp(80, 200);
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
