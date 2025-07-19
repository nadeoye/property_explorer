import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/property_bloc.dart';
import '../bloc/property_state.dart';
import '../bloc/property_event.dart';
import '../../domain/entities/property.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) :super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PropertyBloc>().add(GetAllPropertiesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Listings'),
        centerTitle: true,
      ),
      body: BlocBuilder<PropertyBloc, PropertyState>(
        builder: (context, state) {
          if (state is PropertyLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PropertyLoaded) {
            return ListView.builder(
              itemCount: state.properties.length,
              itemBuilder: (context, index) {
                final property = state.properties[index];
                return PropertyCard(property: property);
              },
            );
          } else if (state is PropertyError) {
            return Center(child: Text ('Error: ${state.message}'));
          }
          return const SizedBox();
        },
        ),
      );
  }
}

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      child: ListTile(
        leading: Image.asset(
          property.imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.image_not_supported),
        ),
        title: Text(property.title),
        subtitle: Text('${property.location}, ₦${property.pricePerNight}/night'),
        onTap: () {
          //Navigate to detail page later
        },
      ),
    );
  
    
  }
}