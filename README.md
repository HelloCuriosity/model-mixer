[![Build Status](https://travis-ci.com/HelloCuriosity/model-mixer.svg?token=aWjqMgk11pxLTM3tzaxw&branch=master)](https://travis-ci.com/HelloCuriosity/model-mixer)
[![codecov](https://codecov.io/gh/HelloCuriosity/model-mixer/branch/master/graph/badge.svg)](https://codecov.io/gh/HelloCuriosity/model-mixer)

# Model Mixer
Model Mixer is a library to automate model generation for automated testing:
- unit
- integration
- etc.

# Flutter Friendly
Model Mixer is Flutter friendly 🚀

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
