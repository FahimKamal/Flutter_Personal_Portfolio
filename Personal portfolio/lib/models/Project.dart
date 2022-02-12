class Project {
  final String? title, description, gitLink;

  Project({this.title, this.description, this.gitLink});
}

List<Project> demo_projects = [
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_Workout_App',
    title: "Home Workout App-Flutter UI and Backend",
    description:
        "This is a home workout app created with flutter. The app also have video player. App will show video instruction on different kind of exercises. All videos are hosted on youtube.",
  ),
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_E-commerce_App_UI',
    title: "E-Commerce App - Flutter UI",
    description:
        "This is a app demonstration UI design of a E-commerce App. Idle for a cloth store. I created this app by following a youtube tutorial as my flutter learning process.",
  ),
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_Travel_Blog_UI',
    title: "Travel Blog Flutter UI",
    description:
        "This is a app demonstration UI design of a Travel Blog app. You will find different blogs on different travel destinations with beautiful photos.",
  ),
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_Personal_Portfolio',
    title: "Personal Portfolio Flutter App+Web",
    description:
        "This is the app or web that you are reading right now. It's a single flutter application that can run on both mobile(Android+IOS) and web. The web version is hosted on the web.Link of the web version of this and apk file is added with the readme file, do check them out.",
  ),
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_Travel_Guide_App',
    title: "Travel Guide app Complete UI and Backend",
    description:
        "Connected with firebase database. In this app you will find detail information of different travel destinations from both in Bangladesh and the world.",
  ),
  Project(
    gitLink: 'https://github.com/FahimKamal/Flutter_Simple_UI',
    title: "Flutter UI Design Login Page, Home Page and Drawer",
    description:
        "Simple responsive UI design of app with login page, home page and drawer. Pages very common with most apps.",
  ),
];
