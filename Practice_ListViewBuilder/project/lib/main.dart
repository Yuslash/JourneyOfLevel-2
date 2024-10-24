import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice Session"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailScreen()),);
            }, child: const Text("Open Rouet!"),
            ),
            const SizedBox(height: 20),
            const Text("Press the Above Button👆"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
              },
              child: const Text("To Login Page"),
            )
          ],
        ),
      ),
    );
  }
  
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome To DetailScreen"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Go Back"),),
              const SizedBox(height: 20,),
              const Text("Press the Above Button to HomeScreen👆")
            ],
          ),
        ),
      ),
    );
  }

}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page", style: TextStyle(color: Colors.amberAccent),),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(        
          mainAxisSize: MainAxisSize.min,
          children: [
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration:  const InputDecoration(labelText: "Email"),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child:  Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(onPressed: (){
                  debugPrint("Login Sucessfully!");
                }, child: const Text('Login')), 
              ),
            ),

            const SizedBox(height: 20),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
               child:  ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Go HomeScreen"),
                ),
              ),
         
          ],
        ),
        ),
      ),
    );
  }
}