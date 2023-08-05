# move_to_home

Flutter plugin for sending mobile applications to background. Supports only Android.

This pligin Just call android activity's moveTaskToBack method
(written in kotlin)

## Getting Started

### Install it (pubspec.yaml)

```yaml
move_to_home:
    git:
        url: https://github.com/pndaza/move_to_home.git
```

### Import it

```dart
import 'package:move_to_home/move_to_home.dart';
```

### Use it

```dart
MoveToHome.moveToHome();
```

## Useful Scenario

```dart
WillPopScope(
  child: MaterialApp(...),
  onWillPop: () async {
    if(Platform.isAndroid){
        MoveToHome.moveToHome();
    }
    return false;
  },
);
```

