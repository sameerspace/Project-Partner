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

List<Project> projectList = [
  Project(
    id: "1",
    image:
        'https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJvbmV8ZW58MHx8MHx8&w=1000&q=80',
    title: 'Autonomous Drone',
    description:
        'Autonomous Drone controlled with rasberry pi. Equipped with ESP32 GPS Module. Uses Computer Vision to detect sorrounding and conducts survey automatically',
  ),
  Project(
    id: "2",
    image:
        'https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJvbmV8ZW58MHx8MHx8&w=1000&q=80',
    title: 'Autonomous Drone',
    description:
        'Autonomous Drone controlled with rasberry pi. Conducts Automated survey',
  ),
  Project(
      id: "3",
      title: "Facebook Automation",
      description: "A tool to automate facebook",
      image:
          "https://play-lh.googleusercontent.com/9s-9zONYk4NZvLlHVMIF5cGCzrx7PjZYQ3uow5P8Rj2Mt_XHWygV3gOt75_iI1YtTg"),
  Project(
    id: "4",
    title: "Web Scraper",
    description: "A Tool built with python to scrape static and dynamic sites",
    image: "https://miro.medium.com/max/1400/1*1QcqrOoDE1rKa0NTp1iEtw.png",
  ),
];
