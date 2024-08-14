<p align="center">
  <img src="https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/json_view_logo.png?raw=true" width="300px">
</p>
<h2 align="center">Displaying json models in a Flutter widget</h2>
<p align="center">
  😎 Cool solution for viewing models in debug working
  <br>
  <span style="font-size: 0.9em"> Show some ❤️ and <a href="https://github.com/Frezyx/flutter_json_view">star the repo</a> to support the project! </span>
</p>
<br>

<p align="center">
  <a href="https://pub.dev/packages/flutter_json_view"><img src="https://img.shields.io/pub/v/flutter_json_view.svg" alt="Pub"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>
  <a href="https://github.com/Frezyx/flutter_json_view"><img src="https://hits.dwyl.com/Frezyx/flutter_json_view.svg?style=flat" alt="Repository views"></a>
  <a href="https://github.com/Frezyx/flutter_json_view"><img src="https://img.shields.io/github/stars/Frezyx/flutter_json_view?style=social" alt="Pub"></a>
</p>
<p align="center">
  <a href="https://pub.dev/packages/flutter_json_view/score"><img src="https://img.shields.io/pub/likes/flutter_json_view?logo=flutter" alt="Pub likes"></a>
  <a href="https://pub.dev/packages/flutter_json_view/score"><img src="https://img.shields.io/pub/popularity/flutter_json_view?logo=flutter" alt="Pub popularity"></a>
  <a href="https://pub.dev/packages/flutter_json_view/score"><img src="https://img.shields.io/pub/points/flutter_json_view?logo=flutter" alt="Pub points"></a>
</p>

<br>

| ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/new_example.gif?raw=true) | ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/new_example2.gif?raw=true) | ![Image](https://github.com/Frezyx/flutter_json_view/blob/main/example/repo/new_example3.gif?raw=true) | 
| :------------: | :------------: | :------------: |


## Getting Started

### Add dependency

```yaml
dependencies:
  flutter_json_view: ^1.1.5
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

#### Map constructor

```dart
JsonView.map({"key":"value"}),
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
      separator: Padding(
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

<br>
<div align="center" >
  <p>Thanks to all contributors of this package</p>
  <a href="https://github.com/Frezyx/group_button/graphs/flutter_json_view">
    <img src="https://contrib.rocks/image?repo=Frezyx/flutter_json_view" />
  </a>
</div>
<br>


For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
