class PortfolioData {
  static const String name = "Leonardo";
  static const String fullName = "Leonardo Salazar";
  static const String role = "portfolio.role";
  static const String description = "portfolio.description";

  static const String aboutText = "portfolio.about";

  static const String avatarUrl = "assets/images/profile_picture.jpg";
  static const String initials = "LS";

  static const List<WorkExperience> workExperience = [
    WorkExperience(
      company: "Neos Tecnologia",
      role: "work.neos.role",
      period: "work.neos.period",
      description: "work.neos.description",
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
      role: "work.nuage.role",
      period: "work.nuage.period",
      description: "work.nuage.description",
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
      role: "work.tpu.role",
      period: "work.tpu.period",
      description: "work.tpu.description",
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
      role: "work.funcao.role",
      period: "work.funcao.period",
      description: "work.funcao.description",
      logoUrl: "assets/images/funcao_sistemas_logo.png",
      technologies: ["SQL Server", "Excel", "Manual Testing"],
    ),
  ];

  static const List<Education> education = [
    Education(
      school: "FIAP",
      degree: "education.fiap.degree",
      period: "education.fiap.period",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Education(
      school: "Etec SEBRAE",
      degree: "education.etec_sebrae.degree",
      period: "education.etec_sebrae.period",
      logoUrl: "assets/images/etec_logo.jpg",
    ),
    Education(
      school: "Etec Professor Horácio Augusto da Silveira",
      degree: "education.etec_horacio.degree",
      period: "education.etec_horacio.period",
      logoUrl: "assets/images/etec_logo.jpg",
    ),
  ];

  static const List<String> skills = [
    "skills.flutter",
    "skills.dart",
    "skills.git",
    "skills.restful",
    "skills.apis",
    "skills.mvvm",
    "skills.cicd",
    "skills.java",
    "skills.agile",
    "skills.firebase",
    "skills.restful_apis",
    "skills.state_management",
    "skills.uiux",
    "skills.clean_code",
    "skills.problem_solving",
    "skills.adaptability",
  ];

  static const List<Project> projects = [
    Project(
      title: "projects.eficientiza_platform.title",
      description: "projects.eficientiza_platform.description",
      dates: "projects.eficientiza_platform.dates",
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
      title: "projects.eficientiza_react.title",
      description: "projects.eficientiza_react.description",
      dates: "projects.eficientiza_react.dates",
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
      title: "projects.eficientiza_api.title",
      description: "projects.eficientiza_api.description",
      dates: "projects.eficientiza_api.dates",
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
      title: "projects.alagaqui.title",
      description: "projects.alagaqui.description",
      dates: "projects.alagaqui.dates",
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
      title: "certifications.fiap_services.title",
      organization: "certifications.fiap_services.organization",
      hours: "certifications.fiap_services.hours",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "certifications.fiap_mobile_marketing.title",
      organization: "certifications.fiap_mobile_marketing.organization",
      hours: "certifications.fiap_mobile_marketing.hours",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "certifications.fiap_negotiation.title",
      organization: "certifications.fiap_negotiation.organization",
      hours: "certifications.fiap_negotiation.hours",
      logoUrl: "assets/images/fiap_logo.jpg",
    ),
    Certification(
      title: "certifications.scrum.title",
      organization: "certifications.scrum.organization",
      hours: "certifications.scrum.hours",
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
