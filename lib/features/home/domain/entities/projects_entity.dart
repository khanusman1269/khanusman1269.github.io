import 'package:usman_portfolio/generated/assets.dart';

class ProjectsEntity {
  String image;
  String name;
  String description;
  List<String> techStack;
  String projectUrl;

  ProjectsEntity(
      {required this.image,
      required this.name,
      required this.description,
      required this.techStack,
      required this.projectUrl});

  static List<ProjectsEntity> projects = [
    ProjectsEntity(
        image: Assets.imgLogo,
        name: "E-Wakeel",
        description:
            "A legal-tech app enabling real-time chat, Zoom-based video consultations, lawyer discovery and registration, appointment booking, and in-app payments via JazzCash and EasyPaisa.",
        techStack: [
          "Flutter",
          "Dart",
          "Firebase",
          "Clean Architecture",
          "State Management",
          "BLoC",
          "Dio"
        ],
        projectUrl: ""),
    ProjectsEntity(
        image: Assets.imgLogo,
        name: "E-Wakeel",
        description:
            "A legal-tech app enabling real-time chat, Zoom-based video consultations, lawyer discovery and registration, appointment booking, and in-app payments via JazzCash and EasyPaisa.",
        techStack: [
          "Flutter",
          "Dart",
          "Firebase",
          "Clean Architecture",
          "State Management",
          "BLoC",
          "Dio"
        ],
        projectUrl: ""),
    ProjectsEntity(
        image: Assets.imgLogo,
        name: "E-Wakeel",
        description:
            "A legal-tech app enabling real-time chat, Zoom-based video consultations, lawyer discovery and registration, appointment booking, and in-app payments via JazzCash and EasyPaisa.",
        techStack: [
          "Flutter",
          "Dart",
          "Firebase",
          "Clean Architecture",
          "State Management",
          "BLoC",
          "Dio"
        ],
        projectUrl: ""),
    ProjectsEntity(
        image: Assets.imgLogo,
        name: "E-Wakeel",
        description:
            "A legal-tech app enabling real-time chat, Zoom-based video consultations, lawyer discovery and registration, appointment booking, and in-app payments via JazzCash and EasyPaisa.",
        techStack: [
          "Flutter",
          "Dart",
          "Firebase",
          "Clean Architecture",
          "State Management",
          "BLoC",
          "Dio"
        ],
        projectUrl: ""),
    ProjectsEntity(
        image: Assets.imgLogo,
        name: "E-Wakeel",
        description:
            "A legal-tech app enabling real-time chat, Zoom-based video consultations, lawyer discovery and registration, appointment booking, and in-app payments via JazzCash and EasyPaisa.",
        techStack: [
          "Flutter",
          "Dart",
          "Firebase",
          "Clean Architecture",
          "State Management",
          "BLoC",
          "Dio"
        ],
        projectUrl: ""),
  ];
}
