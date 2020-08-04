[![Build Status](https://travis-ci.com/HelloCuriosity/model-mixer.svg?token=aWjqMgk11pxLTM3tzaxw&branch=master)](https://travis-ci.com/HelloCuriosity/model-mixer)
[![codecov](https://codecov.io/gh/HelloCuriosity/model-mixer/branch/master/graph/badge.svg)](https://codecov.io/gh/HelloCuriosity/model-mixer)
[![Pub Version](https://img.shields.io/pub/v/model_mixer?color=blue)](https://pub.dev/packages/model_mixer)
[![License](https://img.shields.io/dub/l/vibe-d.svg)](https://github.com/HelloCuriosity/model-mixer/blob/master/LICENSE)
[![ko-fi](https://img.shields.io/badge/donate%20on-Ko--fi-blue.svg)](https://ko-fi.com/U7U4L9F5)

# Model Mixer
Model Mixer is a library to automate model generation for automated testing:
- unit
- integration
- etc.

# Getting Started
Define you model:
```
class TestObject {
  TestObject(
    this.stringValue,
    this.intValue,
    this.doubleValue,
    this.booleanValue,
    this.dateTimeValue,
  );

  final String stringValue;
  final int intValue;
  final double doubleValue;
  final bool booleanValue;
  final DateTime dateTimeValue;
}
```

Auto generate models for testing:
```
final TestObject testObject = modelMixer.build(TestObject);
```

## Supported Types
Model Mixer currently supports the auto generation for the following types:
* bool
* double
* DateTime
* int
* String 

# Inspiration
Model Mixer was inspired from [Fritter Factory](https://github.com/equinox-one/fritterfactory), another great model generator for java and Android: 
