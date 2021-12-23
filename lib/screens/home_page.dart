import 'package:flutter/material.dart';

import '../providers/projects_provider.dart';
import '../widgets/project_card.dart';
import '../widgets/bottom_bar.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);
  final List<Project> item = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.purple, Colors.deepPurple],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Project Partner'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ProjectCard(
              mytitle: projectList[index].title,
              description: projectList[index].description,
              imageUrl: projectList[index].image,
              projectId: projectList[index].id,
            );
          },
          itemCount: projectList.length,
        ),
        bottomNavigationBar: const ProjectNavBar(),
      ),
    );
  }
}
