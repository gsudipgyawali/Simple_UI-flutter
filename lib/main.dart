import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myApp',
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'myApp',
          
          style: TextStyle(
            color: Colors.black,
          
            fontSize: 32,
            fontWeight: FontWeight.bold,
            
          ),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome to my Flutter learning',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 16),

                // ✅ RESPONSIVE IMAGE
                SizedBox(
                  height: 180,
                  child: Image.asset(
                    'lib/assets/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    ElevatedButton(
                      onPressed: () {},
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                         padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                      
                      ),

                      ),
                      child: const Text("Like",style: 
                      TextStyle(
                        color: Colors.white,)),
                    ),
                    
                    ElevatedButton(
                      onPressed: () {},
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                         padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                      
                      ),

                      ),
                      child: const Text("suscribe",style: 
                      TextStyle(
                        color: Colors.red,)),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
