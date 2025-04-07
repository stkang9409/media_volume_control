# media_volume_control

A Flutter plugin to force Android/iOS volume buttons to control **media volume only**.

## 🚀 Installation

```yaml
dependencies:
  media_volume_control:
    git:
      url: https://github.com/stkang9409/media_volume_control
```

## 📦 Usage

```dart
import 'package:media_volume_control/media_volume_control.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaVolumeControl.setMediaVolumeControl();
  runApp(MyApp());
}
```

## 🛠 Platforms

- ✅ Android: Uses `volumeControlStream = STREAM_MUSIC`
- ✅ iOS: Uses `AVAudioSession.setCategory(.playback)`
