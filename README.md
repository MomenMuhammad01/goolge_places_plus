## intro

Google places plus is a dart package connect you with google's places api to get places suggestions and get place latitude and longitude.

## Features
  - Get Places Suggestions
  - Get Place Location (latidue and longitude)

## Getting started


## Usage

1- Add package to your pubspec.yaml file like this : 

```
  cognitive_complexity_analyzer:
    git:
      url: https://github.com/MomenMuhammad01/cognitive_complexity_analyzer.git
```

2- Get Places Suggestions

```
GooglePlacesPlus.getSuggestions(searchQuery: "Alexandria", googleMapsKey: "YOUR_MAPS_KEY");
```

2- Get Places Latitude and Longitude

```
GooglePlacesPlus.getSuggestions(placeId: placeId, googleMapsKey: "YOUR_MAPS_KEY");
```
