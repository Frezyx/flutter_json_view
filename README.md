# flutter_json_view

<p align="center">
  <img src="https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/json_view_logo.png?raw=true" width="300px">
</p>
<h2 align="center">Displaying json models in a Flutter widget</h2>
<p align="center">
  😎 Cool solution for viewing models in debug working
</p>
<br>

| ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/example_mov.gif?raw=true) | ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/example1.jpg?raw=true) | ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/example3.jpg?raw=true) | 
| :------------: | :------------: | :------------: |


## Getting Started

### Add dependency

```yaml
dependencies:
  flutter_json_view: ^0.1.1
```

### Add import package

```dart
import 'package:flutter_json_view/flutter_json_view.dart';
```

### Easy to use

Add one of the constructors in your code

#### String constructor

```dart
JsonView.string('{"key":"value"}'),
```

#### Asset file constructor

```dart
JsonView.asset('assets/data.json'),
```

## Customization
🎨 The package was created in order to be able to customize your json view

<img src="https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/customization_example.jpg?raw=true" alt="drawing" width="400"/>

```dart
JsonView.string(
    '{"key":"value"}',
    theme: JsonViewTheme(
      keyStyle: TextStyle(
        color: Colors.black54,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      doubleStyle: TextStyle(
        color: Colors.green,
        fontSize: 16,
      ),
      intStyle: TextStyle(
        color: Colors.green,
        fontSize: 16,
      ),
      stringStyle: TextStyle(
        color: Colors.green,
        fontSize: 16,
      ),
      boolStyle: TextStyle(
        color: Colors.green,
        fontSize: 16,
      ),
      closeIcon: Icon(
        Icons.close,
        color: Colors.green,
        size: 20,
      ),
      openIcon: Icon(
        Icons.add,
        color: Colors.green,
        size: 20,
      ),
      seporator: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(
          Icons.arrow_right_alt_outlined,
          size: 20,
          color: Colors.green,
        ),
      ),
    ),
  ),
```

**More examples you can see** [here](/example/lib/examples)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
