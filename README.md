# Portfolio Flutter Web

Portfolio profissional desenvolvido em Flutter Web com design moderno, animações suaves e suporte a tema claro/escuro.

## 🚀 Características

- ✨ Animações suaves com blur fade
- 🌓 Tema escuro
- 📱 Design responsivo
- 🎨 Interface moderna e minimalista
- 🔗 Links para redes sociais
- 📊 Seções organizadas (Hero, Sobre, Experiência, Educação, Skills, Projetos, Certificações, Contato)

## 📋 Pré-requisitos

- Flutter SDK (>=3.0.0)
- Dart SDK
- Chrome ou outro navegador moderno

## 🔧 Instalação

1. Clone o repositório ou copie os arquivos
2. Instale as dependências:

```bash
flutter pub get
```

3. Execute o projeto:

```bash
flutter run -d chrome
```

Ou para build de produção:

```bash
flutter build web
```

## 📁 Estrutura do Projeto

```
lib/
├── main.dart                 # Arquivo principal com tema
├── models/
│   └── portfolio_data.dart   # Modelo de dados
├── screens/
│   └── home_screen.dart      # Tela principal
└── widgets/
    ├── blur_fade.dart        # Animação de fade com blur
    ├── resume_card.dart      # Card de experiência/educação
    ├── project_card.dart     # Card de projetos
    ├── hackathon_card.dart   # Card de hackathons
    └── navigation_bar.dart   # Barra de navegação
```

## 🎨 Personalização

Para personalizar o portfólio com seus dados, edite o arquivo `lib/models/portfolio_data.dart`:

- `name`: Seu nome
- `description`: Sua descrição
- `aboutText`: Texto sobre você
- `workExperience`: Suas experiências profissionais
- `education`: Sua educação
- `skills`: Suas habilidades
- `projects`: Seus projetos
- `certifications`: Suas certificações e cursos
- `socialLinks`: Links das redes sociais

## 📦 Dependências

- `google_fonts`: Fontes do Google
- `url_launcher`: Abrir URLs
- `flutter_svg`: Suporte a SVG
- `animated_text_kit`: Animações de texto
- `visibility_detector`: Detectar visibilidade dos widgets

## 🌐 Deploy

Para fazer deploy no Firebase Hosting, GitHub Pages ou Vercel:

1. Build do projeto:

```bash
flutter build web --release
```

2. Os arquivos estarão em `build/web/`

### Firebase Hosting

```bash
firebase deploy
```

### GitHub Pages

Copie o conteúdo de `build/web/` para o branch gh-pages

### Vercel

Aponte para a pasta `build/web/`

## 📝 Notas

- As imagens dos projetos usam placeholders (via.placeholder.com) - substitua por suas imagens reais
- Os avatares usam dicebear.com - substitua por suas fotos reais
- Links de redes sociais precisam ser atualizados com seus perfis reais

## 🎯 Funcionalidades Futuras

- [ ] Sistema de navegação por seções
- [ ] Animações mais elaboradas
- [ ] Sistema de blog integrado
- [ ] Formulário de contato funcional
- [ ] Analytics integrado
- [ ] SEO otimizado

## 📄 Licença

Este projeto está sob a licença MIT.
