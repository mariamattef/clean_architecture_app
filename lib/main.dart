import 'package:clean_arch/core/connection/network_info.dart';
import 'package:flutter/material.dart';

import 'features/user/presentation/screens/user_screen.dart';
void main()async {
  InternetService internetService = InternetServiceImpl();
  
  bool isConnected = await internetService.isConnected();
  
  if (isConnected) {
    print('Device is connected to the internet');
  } else {
    print('Device is not connected to the internet');
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserScreen()
    );
  }
}
