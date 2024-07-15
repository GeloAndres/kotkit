import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastucture/datasource/local_video_datasource_impl.dart';
import 'package:toktik/infrastucture/repository/local_video_repository_impl.dart';
import 'package:toktik/presentation/provider/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = LocalVideoRepositoryImpl(
        videoPostDatasource: LocalVideoDatasourceImpl());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                DiscoverProvider(videoPostRespository: videoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'TokTik',
        home: const DiscoverScreen(),
      ),
    );
  }
}
