class Project {
  String title;
  String description;
  String image;
  Project({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<Project> projectList = [
  Project(
    image:
        'https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJvbmV8ZW58MHx8MHx8&w=1000&q=80',
    title: 'Autonomous Drone',
    description:
        'Autonomous Drone controlled with rasberry pi. Conducts Automated survey',
  ),
  Project(
    image:
        'https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJvbmV8ZW58MHx8MHx8&w=1000&q=80',
    title: 'Autonomous Drone',
    description:
        'Autonomous Drone controlled with rasberry pi. Conducts Automated survey',
  ),
  Project(
      title: "Facebook Automation",
      description: "A tool to automate facebook",
      image:
          "https://play-lh.googleusercontent.com/9s-9zONYk4NZvLlHVMIF5cGCzrx7PjZYQ3uow5P8Rj2Mt_XHWygV3gOt75_iI1YtTg"),
  Project(
    title: "Web Scraper",
    description: "A Tool built with python to scrape static and dynamic sites",
    image: "https://miro.medium.com/max/1400/1*1QcqrOoDE1rKa0NTp1iEtw.png",
  ),
];
