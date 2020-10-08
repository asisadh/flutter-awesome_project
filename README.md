# A Flutter Project

This is simple flutter app

## Installation


```bash
flutter pub get
flutter pub run build_runner watch --delete-conflicting-outputs
flutter run
```

## Description

This project is a simple flutter project. This project is created by following clean architecture patterns. There are three major layers in which app communicated with each other and all magic happens.

## Layers

### Data
This layer contains datasources (local and remote) original point of data in our app. A model to map those data to a dart model, and a Repository which is responsible to fetch data either from remote or local.

### Domain
This layer contains all the business logic for our app. This also contains the Entity which is used by presentation to display the necessary information. This layer also contains a protocol for the repository, and usually the entities are super class for models in data layers.

### Presentation
All The views are kept in presentation layer. And keep track of user inputs and show necessary information.

## External Library used.
- flutter_block: For state management.
- freezed_annotation: to create unions which helps in state management.
- injectable: for dependency injection
- get_it: for dependency injection
- auto_route: for easy routing.


## Video Demo

### Android

![](https://github.com/asisadh/flutter-awesome_project/blob/master/demo/android.gif?raw=true)

### iOS
![](https://github.com/asisadh/flutter-awesome_project/blob/master/demo/ios.gif?raw=true)


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)