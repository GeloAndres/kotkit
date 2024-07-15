import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/provider/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scroll_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    final int _selectedIndex = 1;

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator())
          : VideoScrollView(videos: discoverProvider.videos),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Amigos'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Bandeja entrada'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
