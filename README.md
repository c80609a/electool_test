# electool_test
Senior assignment for Electool Hungary kft.

```
Create an application in Ruby with or without a framework:
- The application should receive an address (determine the format).
- Request address coordinates from Google or other public API.
- Calculate how far you are from the Electool office as the crow flies.
- Return the distance in meters as an answer.
- Test the application with unit tests. For development, use Git and commit step by step, then upload it to github or Bitbucket and send me the repo link.
```

## Fejlesztés

The distance between the two points was calculated using the Haversine formula, source:
https://stackoverflow.com/questions/12966638/how-to-calculate-the-distance-between-two-gps-coordinates-without-using-google-m

To run the program, you need a google API key that can use geolocation.
Ezt a ".env" fileba kell elhelyezni. A ".env_sample" file tartalmazza a kitöltendő kulcsok nevét.

To shorten the entire installation and configuration process, I Dockerized the application.

Since the testing does not include model tests, I solved it with endpoint testing.
