import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;
import 'features/property/presentation/pages/home_screen.dart';
import 'features/property/presentation/bloc/property_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init(); //This is what sets up GetIt
  runApp(const PropertyExplorerApp());
}

class PropertyExplorerApp extends StatelessWidget{
  const PropertyExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Explorer',
      home: BlocProvider(
        create: (_) => di.sl<PropertyBloc>(),
        child: const HomeScreen(),     
      ),                 
    );
  }

}