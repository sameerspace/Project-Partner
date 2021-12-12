import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/tag_card.dart';
import '../widgets/profile_card.dart';
import '../widgets/join_button.dart';

class ProjectDetailScreen extends StatelessWidget {
  static const routeName = '/project-detail';
  const ProjectDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
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
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   title: Text(args['title']),
        // ),
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -1),
              child: Hero(
                tag: args['herotag'],
                child: Image.network(
                  args['image'],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          args['title'],
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          args['description'],
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              TagCard(text: "Computer Vision"),
                              TagCard(text: "AI"),
                              TagCard(text: "Image Processing"),
                              TagCard(text: "Embedded Systems"),
                            ],
                          ),
                        ),
                      ),
                      heading,
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              ProfileCard(
                                imageUrl:
                                    'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg',
                                name: 'Tina',
                              ),
                              ProfileCard(
                                imageUrl:
                                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                name: 'Alex',
                              ),
                              ProfileCard(
                                imageUrl:
                                    'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                name: 'Mary',
                              ),
                              ProfileCard(
                                imageUrl:
                                    'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                name: 'Khan',
                              ),
                              ProfileCard(
                                imageUrl:
                                    'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg',
                                name: 'Tina',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const JoinButton(),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-1.0, -1.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const ProjectNavBar(),
      ),
    );
  }
}

const Widget heading = Padding(
  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
  child: Text(
    "Meet the creators:",
    style: TextStyle(fontStyle: FontStyle.italic),
  ),
);
