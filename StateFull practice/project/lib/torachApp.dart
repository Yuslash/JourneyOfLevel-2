import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class TorchApp extends StatefulWidget {

  const TorchApp({super.key});

  @override
  _TorchAppState createState() => _TorchAppState();
  
}

class _TorchAppState extends State<TorchApp> {

  bool isTorchOn = false;

  void toggleTorch() async {
    setState(() => isTorchOn = !isTorchOn);

    isTorchOn ? await TorchLight.enableTorch() : await TorchLight.disableTorch() ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Torch App"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          toggleTorch();
        }, child:  Text(isTorchOn ? 'Torch On' : 'Torch Off'),),
      ),
    );
  }
}