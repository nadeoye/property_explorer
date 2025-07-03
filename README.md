# Property Explorer

Property Explorer is a mini Airbnb-like Flutter application module built as part of a skill evaluation project. The goal is to demonstrate proficiency in Flutter development while applying Clean Architecture principles, BLoC state management, GoRouter navigation, and GetIt for dependency injection. The application provides users with the ability to browse properties, view property details, and initiate a booking process.

This project was developed to showcase the ability to build a well-structured, functional Flutter app that adheres to best practices in architecture and state management. It is organized into clear layers to separate concerns, making the codebase maintainable and testable.

The core features implemented include:
- A Property List Page that loads property data from a local JSON file and displays it in a clean, scrollable list with images, titles, pricing, and locations.
- A Property Details Page that shows a larger image, full description, ratings, and available dates for booking.
- A Booking Form Page where users can select check-in and check-out dates, specify the number of guests, and submit their booking information. On submission, a confirmation message is displayed.
- Navigation throughout the app using GoRouter, including deep linking support for accessing property details and booking forms via URL.
- State management using BLoC to handle loading and updating the UI in response to user actions and data changes.
- Dependency injection using GetIt to manage repositories, use cases, and Blocs.

The project is structured according to Clean Architecture principles, organized into the following directory layout:

lib/
  core/
    utils/
    errors/
  features/
    property/
      data/
        datasources/
        models/
        repositories/
      domain/
        entities/
        repositories/
        usecases/
      presentation/
        bloc/
        pages/
        widgets/
  injection_container.dart
  main.dart

To run this project locally, you will need to have the Flutter SDK installed and set up on your machine, along with an Android emulator or a connected Android device. You can also run it on iOS devices if you have a Mac environment configured. This project was primarily tested on Android.

Installation steps:

1. Clone the repository to your local machine:
   git clone https://github.com/nadeoye/property_explorer.git

2. Navigate to the project directory:
   cd property_explorer

3. Install dependencies:
   flutter pub get

4. Connect your Android device via USB with developer mode enabled, or launch an emulator.

5. Run the application:
   flutter run

Known assumptions and limitations:

- The application uses local JSON files as its data source rather than a live backend API.
- Booking submissions are not persisted beyond the current session.
- UI design is kept intentionally minimal to focus on architecture and functional requirements.
- Some optimizations, such as caching or advanced error handling, are outside the scope of this version but can be added as enhancements.

This repository will be incrementally updated as additional features, such as search/filter capabilities and local storage, are implemented.

If you have any questions or would like to discuss this project, please feel free to reach out:

Niyi Adeoye
Email: nadeoye@gmail.com
GitHub: https://github.com/nadeoye

This project is intended for educational and evaluation purposes only.
