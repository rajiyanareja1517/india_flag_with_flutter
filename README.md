# india_flag_with_flutter

A india_flag_with_flutter project created in flutter. india_flag_with_flutter supports both ios and android, clone the appropriate branches mentioned below:

* For Mobile: https://github.com/rajiyanareja1517/india_flag_with_flutter

Download or clone this repo by using the link below:

```
https://github.com/rajiyanareja1517/india_flag_with_flutter.git
```


### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- assets
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- view/screen/
|- main.dart
```

### view/screens

This directory screens all the screen of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- SplashScreen.dart
|- HomePage.dart
|- HomeScreen.dart
|- DetailsScreen.dart

```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';
import 'package:india_flag_with_flutter/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
  
```

[Screen_recording_20240814_223424.webm](https://github.com/user-attachments/assets/034a2024-8eb0-4669-94fd-8e61d55162b5)


![Screenshot_20240814_223353](https://github.com/user-attachments/assets/fae4cd8a-d00e-4824-8b2a-218e53864f8f)

## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.
