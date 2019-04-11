# electool_test
Senior assignment for Electool Hungary kft.

```
Készíts egy alkalmazást Ruby-ban frameworkkel vagy anélkül:
- Az alkalmazás fogadjon egy lakcímet (határozd meg a formátumot).
- Kérd le a Google-től vagy más nyilvános API-tól a cím koordinátáit.
- Számold ki milyen messze van légvonalban az Electool irodájától.
- Válaszként add vissza el a távolságot, méterben.
- Teszteld az alkalmazást unit tesztekkel.

A fejlesztéshez használj Git-et és lépésenként commitolj, majd töltsd fel a githubra, vagy Bitbucketre és a repo linkjét küldd el nekem.
```
## Fejlesztés

A két pont közti távolság Haversine formulával lett számolva, forrás:
https://stackoverflow.com/questions/12966638/how-to-calculate-the-distance-between-two-gps-coordinates-without-using-google-m

A program futásához szükség van egy geolokációt alkalmazni tudó google API kulcsra.
Ezt a ".env" fileba kell elhelyezni. A ".env_sample" file tartalmazza a kitöltendő kulcsok nevét.

Az egész telepítési és konfigurálási eljárást lerövidítendő Dockerizáltam az alkamazást.

A tesztelést mivel nem tartalmaz modell teszteket ezért endpoint testing-el oldottam meg.
