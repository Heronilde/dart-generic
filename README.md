# Dart Generic

A generic Dart module designed to provide reusable components for handling CRUD operations using the Bloc pattern in a flexible and efficient way. This module can be easily integrated into any Dart or Flutter project, allowing developers to work with various data types effortlessly.

## Features
- **Generic CRUD Operations**: Simplifies the process of creating, reading, updating, and deleting data with any model type.
- **Bloc Pattern Integration**: Utilizes the Bloc pattern for efficient state management, making it easier to manage complex state transitions.
- **Customizable**: Easily extendable to meet specific project requirements.

## Installation

To use this module in your Dart or Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  dart_generic:
    git:
      url: https://github.com/Heronilde/dart-generic.git

Then run:
  flutter pub get
Usage
1. Import the Module
  import 'package:dart_generic/dart_generic.dart';

2. Example: Using the Generic Bloc for CRUD Operations

  final bloc = GenericBloc<MyModel>();

// Create an item
bloc.add(CreateItemEvent<MyModel>(item: myModelInstance));

// Listen to state changes
bloc.stream.listen((state) {
  if (state is GenericLoadSuccess<MyModel>) {
    print('Item loaded: ${state.item}');
  }
});

// Update an item
bloc.add(UpdateItemEvent<MyModel>(id: myModelId, item: updatedModel));

// Delete an item
bloc.add(DeleteItemEvent<MyModel>(id: myModelId));

3. Working with Different Models
  You can easily reuse this module for different models by passing the appropriate type parameter:
  final productBloc = GenericBloc<ProductModel>();
  final userBloc = GenericBloc<UserModel>();


Contributing
  Contributions are welcome! To contribute to this project, please:

  Fork the repository.
  Create a new branch.
  Submit a pull request with a clear description of your changes.
  License
  This project is licensed under the MIT License. See the LICENSE file for more details.
  
  Issues
  If you encounter any issues, please create an issue on GitHub.


### Key Changes:
- **Emphasized the Bloc Pattern**: The description and usage sections now highlight the integration with the Bloc pattern, making it clear to potential users how they can manage state effectively.
- **Examples for CRUD Operations**: Added examples of how to create, update, and delete items using the Bloc.

Feel free to modify any part of this README to better fit your module’s specific features and functionality!


