class Data {
  final String? title;
  final String? description;

  const Data({this.title, this.description});
}

List<Data> skillsList() {
  var skillsList = <Data>[];
  skillsList.add(const Data(
      title: "Flutter",
      description:
          "Dart, State Management,Riverpod,Custom Component Creation, third party library integration, GetIt, Mobile REST API integration, Material Design, Firebase Integration."));

  skillsList.add(const Data(
      title: "Android Technologies",
      description:
          "Android Native components, Android SDK, Custom Component Creation, third-party library integration, Mobile REST API integration, Push Notification, Firebase- analytics, cloud messaging, MVVM architecture, Android Jetpack library, Coroutines,Jetpack Compose."));

  skillsList.add(const Data(
      title: "Programming Languages",
      description: "Dart,Core Java, Android, Kotlin."));

  skillsList
      .add(const Data(title: "Database", description: "SQLite, MySQL, Room."));

  skillsList.add(const Data(
      title: "Development Tools",
      description: "Visual Studio Code,Android Studio."));

  skillsList.add(const Data(
      title: "Integration Tools",
      description: "BitBucket, Git, Gitlab, Github"));
  skillsList
      .add(const Data(title: "Testing Tools", description: "Redmine, Jira"));
  return skillsList;
}
