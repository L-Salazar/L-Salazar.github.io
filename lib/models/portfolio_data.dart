class PortfolioData {
  static const String name = "Leonardo";
  static const String fullName = "Leonardo Salazar";
  static const String role = "Software Engineer turned Entrepreneur";
  static const String description =
      "I love building things and helping people. Currently, I'm focused on creating impactful mobile applications using Flutter.";

  static const String aboutText = """
Mobile Engineer, specialized in Flutter.
Working professionally with Flutter and Dart since 2021, building cross-platform mobile applications. Early on, I focused on creating responsive and efficient apps by integrating RESTful APIs, managing version control with Git, and applying clean architecture and testing practices.

This journey allowed me to build and deploy real-world apps using CI/CD, Scrum, and Firebase—successfully deploying apps to the App Store and Google Play.

I'm passionate about building successful products, collaborating effectively with teams, and constantly improving workflows to enhance user experience and resolve issues efficiently.
""";

  static const String avatarUrl = "assets/images/profile_picture.jpg";
  static const String initials = "LS";

  static const List<WorkExperience> workExperience = [
    WorkExperience(
      company: "Neos Tecnologia",
      role: "Mobile/Flutter Developer",
      period: "July 2024 - present",
      description:
          "At Neos, I contributed significantly to the implementation and maintenance of features. Among the apps managed by Neos, we have reached over 1 million users, achieving performance improvements and memory optimization, development and test coverage, updates and enhancements to the architecture, use of MobX for state management, use of Modular for routing and dependency injection, ensuring responsiveness, and adherence to SOLID principles and Clean Code practices.",
      logoUrl: "assets/images/neos_tecnologia.jpg",
      technologies: [
        "Flutter",
        "Dart",
        "Git",
        "CI/CD",
        "Agile",
        "MobX",
        "Modular",
        "Clean Architecture",
        "Responsive Design",
        "State Management",
      ],
    ),
    WorkExperience(
      company: "Nuage IT's everywhere",
      role: "Mobile/Flutter Developer",
      period: "March 2022 - June 2024",
      description:
          "At Nuage IT's Everywhere, I played a key role in optimizing and maintaining scalable application features. My work involved continuous improvements in performance and memory efficiency, strong test coverage, and architectural enhancements. The projects followed best practices such as the use of MobX for state management, Modular for routing and dependency injection, and a focus on responsiveness. All development adhered to SOLID principles and Clean Code to ensure quality, maintainability, and long-term stability.",
      logoUrl: "assets/images/nuageit_logo.jpg",
      technologies: [
        "Flutter",
        "Dart",
        "Git",
        "CI/CD",
        "Agile",
        "MobX",
        "Modular",
        "Clean Architecture",
        "Responsive Design",
        "State Management",
      ],
    ),
    WorkExperience(
      company: "Todas Por Uma",
      role: "Mobile/Flutter Developer",
      period: "November 2020 - February 2023",
      description:
          "At Todas Por Uma, I was responsible for implementing the application and its architecture from scratch, working closely with the CEO on a mission to save lives through technology. The app is now present in over 7 countries, impacting the lives of more than 25,000 Brazilians and users worldwide by providing greater safety in their daily routines. The project included the implementation of the MVVM architecture, integration with Firebase services such as Crashlytics, Authentication, Storage, and Firestore, as well as Google Maps and geolocation features. It also utilized Provider for state management and SQLite for internal data storage.",
      logoUrl: "assets/images/todasporuma_logo.png",
      technologies: [
        "Flutter",
        "Dart",
        "Git",
        "MVVM",
        "Firebase Storage",
        "Cloud Firestore",
        "Firebase Authentication",
        "Firebase Crashlytics",
        "Google Maps",
        "Geolocation",
        "SQLite",
        "RESTful APIs",
        "Provider",
      ],
    ),
    WorkExperience(
      company: "Função Sistemas",
      role: "Test Analyst Intern",
      period: "February 2020 - March 2021",
      description:
          "As a Junior Test Analyst Apprentice, I supported the software quality assurance process by executing manual tests, analyzing results, and identifying bugs to ensure system reliability. I worked with SQL to validate data consistency and assist in troubleshooting, and used Excel for test documentation, reporting, and performance tracking. This experience strengthened my analytical thinking, attention to detail, and understanding of QA methodologies and software development workflows.",
      logoUrl: "assets/images/funcao_sistemas_logo.png",
      technologies: ["SQL Server", "Excel", "Manual Testing"],
    ),
  ];

  static const List<Education> education = [
    Education(
      school: "FIAP",
      degree: "Tecnólogo em Análise e Desenvolvimento de Sistemas",
      period: "2023 - 2025",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Education(
      school: "Etec Professor Horácio Augusto da Silveira",
      degree: "Técnico em Análise e Desenvolvimento de Sistemas",
      period: "2018 - 2020",
      logoUrl: "assets/images/etec_logo.jpg",
    ),
    Education(
      school: "Etec SEBRAE",
      degree: "Especialização mobile",
      period: "2020 - 2020",
      logoUrl: "assets/images/etec_logo.jpg",
    ),
  ];

  static const List<String> skills = [
    "Flutter",
    "Dart",
    "Git",
    "Restful",
    "APIs",
    "MVVM",
    "CI/CD",
    "Java",
    "Agile Methodologies",
    "Firebase",
    "RESTful APIs",
    "State Management",
    "UI/UX Design Principles",
    "Clean Code",
    "Problem Solving",
    "Adaptability",
  ];

  static const List<Project> projects = [
    Project(
      title: "Mottu Eficientiza - Management Platform",
      description:
          "Developed a comprehensive platform to manage motorcycle fleets for Mottu, enhancing operational efficiency and streamlining maintenance processes.",
      dates: "Jan 2025 - Dec 2025",
      technologies: [
        "Java",
        "Spring Boot",
        "Spring Security",
        "Thymeleaf",
        "H2 Database",
        "RESTful APIs",
        "Git",
        "Docker",
        "TailwindCSS",
        "JPA",
      ],
      image: "assets/images/eficientiza.png",
      links: ["https://github.com/L-Salazar/Java-Sprint-3"],
    ),
    Project(
      title: "React App for Mottu Eficientiza",
      description:
          "Developed a React-based web application for Mottu's Eficientiza platform, providing an intuitive interface for managing motorcycle fleets and streamlining maintenance operations.",
      dates: "April 2023 - March 2024",
      technologies: [
        "React Native",
        "JavaScript",
        "RESTful APIs",
        "Git",
        "Axios",
        "Context API",
      ],
      image: "assets/images/react_app.png",
      links: ["https://github.com/AntonioCarvalhoFIAP/challenge-3-L-Salazar"],
    ),
    Project(
      title: "Mottu Management API C#",
      description:
          "Developed a RESTful API for Mottu to efficiently manage motorcycle fleets, incorporating features for tracking, maintenance scheduling, and performance analytics.",
      dates: "Jan 2025 - Dec 2025",
      technologies: [
        ".NET",
        "C#",
        "Clean Architecture",
        "Entity Framework",
        "Clean Code",
        "HATEOAS",
        "Git",
        "MVVM",
      ],
      image: "assets/images/eficientiza.png",
      links: ["https://github.com/L-Salazar/.NET-Sprint-3"],
    ),

    Project(
      title: "Alagaqui - Flooding Solution App",
      description:
          "Developed a mobile application to help users identify and avoid flooding-prone areas in urban environments, enhancing safety during adverse weather conditions.",
      dates: "November 2024 - December 2024",
      technologies: [
        "React Native",
        "JavaScript",
        "RESTful APIs",
        "Google Maps API",
        "Axios",
      ],
      image: "assets/images/alagaqui.png",
      links: ["https://github.com/L-Salazar/GS-Java"],
    ),
  ];

  static const List<Certification> certifications = [
    Certification(
      title: "Services Architecture / API / Mobile Architecture",
      organization: "FIAP",
      hours: "80 horas",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "Mobile Marketing",
      organization: "FIAP",
      hours: "60 horas",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "Técnicas de Negociação",
      organization: "FIAP",
      hours: "40 horas",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "Scrum Fundamentals Certified",
      organization: "SCRUMstudy",
      hours: "16 horas",
      logoUrl: "assets/images/scrum.png",
    ),
  ];

  static const Map<String, SocialLink> socialLinks = {
    "github": SocialLink(
      name: "GitHub",
      url: "https://github.com/L-Salazar",
      icon: "GitHub",
    ),
    "linkedin": SocialLink(
      name: "LinkedIn",
      url: "https://www.linkedin.com/in/lfsalazaar/",
      icon: "LinkedIn",
    ),
  };
}

class WorkExperience {
  final String company;
  final String role;
  final String period;
  final String description;
  final String logoUrl;
  final List<String> technologies;

  const WorkExperience({
    required this.company,
    required this.role,
    required this.period,
    required this.description,
    required this.logoUrl,
    required this.technologies,
  });
}

class Education {
  final String school;
  final String degree;
  final String period;
  final String logoUrl;

  const Education({
    required this.school,
    required this.degree,
    required this.period,
    required this.logoUrl,
  });
}

class Project {
  final String title;
  final String description;
  final String dates;
  final List<String> technologies;
  final String image;
  final List<String> links;

  const Project({
    required this.title,
    required this.description,
    required this.dates,
    required this.technologies,
    required this.image,
    required this.links,
  });
}

class Certification {
  final String title;
  final String organization;
  final String hours;
  final String logoUrl;

  const Certification({
    required this.title,
    required this.organization,
    required this.hours,
    required this.logoUrl,
  });
}

class SocialLink {
  final String name;
  final String url;
  final String icon;

  const SocialLink({required this.name, required this.url, required this.icon});
}
