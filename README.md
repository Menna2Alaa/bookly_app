# 📚 Bookly App

A modern Flutter application for discovering and reading free books, powered by the Google Books API.

## ✨ Features

- **Discover Books**: Browse featured programming and computer science books
- **Search Functionality**: Find books by keywords or subjects
- **Book Details**: View comprehensive information about each book
- **Similar Recommendations**: Get book suggestions based on categories
- **Clean UI**: Dark theme with smooth animations and intuitive navigation

## 🏗️ Architecture

This app follows **Clean Architecture** principles with:

- **BLoC Pattern** for state management
- **Repository Pattern** for data access
- **Dependency Injection** using GetIt service locator
- **Error Handling** with custom failure classes
- **Responsive Design** with custom widgets

## 📱 Screens

- **Splash Screen**: Animated app introduction
- **Home Screen**: Featured and newest books display
- **Search Screen**: Book search functionality
- **Book Details**: Detailed book information with similar recommendations

## 🛠️ Tech Stack

- **Flutter** - Cross-platform mobile framework
- **BLoC/Cubit** - State management
- **Dio** - HTTP client for API calls
- **GoRouter** - Navigation management
- **Google Fonts** - Typography
- **URL Launcher** - External link handling

## 📦 Dependencies

```yaml
dependencies:
  flutter_bloc: ^8.1.3
  dio: ^5.3.2
  dartz: ^0.10.1
  go_router: ^10.1.2
  google_fonts: ^6.1.0
  get_it: ^7.6.4
  equatable: ^2.0.5
  url_launcher: ^6.1.14
  font_awesome_flutter: ^10.5.0
```

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/Menna2Alaa/bookly_app.git
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── core/
│   ├── errors/           # Error handling
│   ├── utilities/        # Shared utilities
│   └── models/          # Data models
├── features/
│   ├── home/            # Home feature
│   ├── search/          # Search feature
│   └── splash/          # Splash screen
└── constants.dart       # App constants
```

## 🎨 Design

- **Color Scheme**: Dark theme with custom primary color
- **Typography**: Montserrat and GT Sectra Fine fonts
- **Animations**: Smooth transitions and loading indicators
- **Responsive**: Adapts to different screen sizes

## 🔗 API

This app uses the [Google Books API](https://developers.google.com/books) to fetch:
- Free programming and computer science books
- Book search results
- Book details and metadata
- Book cover images
