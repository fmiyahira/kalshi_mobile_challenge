# 💸 Kalshi Mobile Challenge

Welcome to the **Kalshi Financial Wellness App**! This project is a Flutter-based mobile application designed to help users track and understand their financial health by calculating a wellness score based on their annual income and monthly costs.

---

## 📋 Table of Contents
- [About the Challenge](#about-the-challenge)
- [Business Rules](#business-rules)
- [App Features](#app-features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [How to Run](#how-to-run)
- [Testing](#testing)
- [Tech Stack](#tech-stack)
- [Contributing](#contributing)
- [License](#license)

---

## 🎯 About the Challenge
Kalshi is a regulated exchange & prediction market where you can trade on the outcome of real-world events. This challenge consists of building a new feature to help users keep track of their financial situation by providing a simple, intuitive, and scalable Flutter app.

---

## 🧑‍💼 Business Rules
- The user must input their **annual gross income** and **average monthly costs**.
- The system calculates a **financial wellness score** based on these values:
  - At the end of the year, the user pays 8% over their annual gross income.
  - If annual costs are **≤ 25%** of annual net compensation: **HEALTHY**
  - If annual costs are **> 25% and ≤ 75%**: **AVERAGE**
  - If annual costs are **> 75%**: **UNHEALTHY**

**Examples:**
- Annual Income = 1000 & Monthly Costs = 10 → **HEALTHY**
- Annual Income = 1000 & Monthly Costs = 30 → **AVERAGE**
- Annual Income = 1000 & Monthly Costs = 80 → **UNHEALTHY**

---

## ✨ App Features
- Clean and modern UI (following the provided Figma design)
- Form validation (required fields, only numbers, values > 0)
- Instant feedback on financial wellness score
- Secure handling of user data (no data is stored or shared)
- Responsive and scalable project structure

---

## 🗂️ Project Structure
```
lib/
  main.dart                # App entry point
  src/
    core/
      shared/              # Shared utilities, extensions, and widgets
      theme/               # App colors, text styles, assets
    features/
      wellness_test/
        domain/
          enums/           # Enums for wellness status
          usecases/        # Business logic for score calculation
        presentation/
          presenter/       # State management (stores)
          pages/           # UI screens (form, result)
assets/
  fonts/                   # Custom fonts
  images/                  # SVGs and icons
```

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or higher recommended)
- [Git](https://git-scm.com/)
- A device or emulator (iOS or Android)

### Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/kalshi_mobile_challenge.git
   cd kalshi_mobile_challenge
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

---

## 🧪 Testing
To run widget and unit tests:
```bash
flutter test
```

---

## 🛠️ Tech Stack
- **Flutter** (UI toolkit)
- **Dart** (programming language)
- **ValueNotifier** (state management)
- **Custom Theming** (fonts, colors, icons)

---

## 📁 Folder Details
- `lib/src/core/shared/extensions/` — String and other Dart extensions
- `lib/src/core/theme/` — App-wide colors, text styles, and asset references
- `lib/src/features/wellness_test/domain/` — Business logic and enums
- `lib/src/features/wellness_test/presentation/pages/` — UI screens
- `lib/src/features/wellness_test/presentation/presenter/` — State management (stores)

---

## 📝 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 📄 License
This project is for educational and challenge purposes only.

---

## 📣 Notes
- Only Flutter is allowed for this assignment.
- All business rules and UI validations are strictly followed.
- The codebase is structured for scalability and maintainability.