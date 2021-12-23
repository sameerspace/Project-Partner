import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String imageUrl;
  String role;
  User({
    required this.name,
    required this.imageUrl,
    required this.role,
  });
}

class Project {
  String id;
  String title;
  String description;
  String image;
  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });
}

class ProjectPartner with ChangeNotifier {
  List<Project> _projects = [];

  List<Project> get projects {
    return [..._projects];
  }

  Future<void> fetchAndSetProjects() async {
    final db = FirebaseFirestore.instance;
    db.collection('projects').snapshots().listen((event) {
      _projects.add(Project(
          id: id, title: event.docs, description: description, image: image));
    });
  }
}

List<User> dummyUsers = [
  User(
    imageUrl:
        'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg',
    name: 'Tina',
    role: "Team Lead",
  ),
  User(
    imageUrl:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Alex',
    role: "Junior Software Engineer",
  ),
  User(
    imageUrl:
        'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Mary',
    role: "Software Engineer",
  ),
  User(
    imageUrl:
        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Khan',
    role: "UI Designer",
  ),
  User(
    imageUrl:
        'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg',
    name: 'Tina',
    role: "UI Designer",
  ),
];
