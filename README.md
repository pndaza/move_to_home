# move_to_home

Flutter plugin for sending android app to background. Supports only Android.

This plugin just calls android activity's `moveTaskToBack` method. (written in kotlin )

[source: stackoverflow](https://stackoverflow.com/questions/55539302/sending-your-application-to-background-when-back-button-is-pressed-in-flutter)

## Getting Started

### Install it (github)

```yaml
move_to_home:
    git:
        url: https://github.com/pndaza/move_to_home.git
```

### Import it

```dart
import 'package:move_to_home/move_to_home.dart';
```

### How to

```dart
MoveToHome.moveToHome();
```

## Useful Scenario

```dart
WillPopScope(
  onWillPop: () async {
    if(Platform.isAndroid){
        MoveToHome.moveToHome();
        return false;
    }
    return true;
  },
  child: Scaffold(...),
);
```

