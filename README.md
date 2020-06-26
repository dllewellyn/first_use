# first_use

A simple flutter package to detect if this is the first time a package has been used.

## Getting Started

The first use package is simple and has only three functions.

```

  var firstUse = FirstUse();
  firstUse.isFirstUse().then((isFirst) => print(isFirst));
  firstUse.firstUseDate().then((date) => print(date));
  
   firstUse.logNewFirstUse();
```

## Notes
* isFirst use will always return false unless you call logNewFirstUse
* logNewFirstUse will update the date to 'date.now'
