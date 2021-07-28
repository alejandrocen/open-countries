## Documentation

### Get countries.

`GET /api/countries`

**Optional parameters**:
* limit(default 25)
* offset(default 0)
* sort(default alpha2_code)
* fields(default *all)
* q(default *all)

Pagination.

`GET /api/countries?limit=3&offset=0`

Multiple sort.

The sort order for each sort field is ascending unless it's prefixed with minus ("-"), in which case it's descending.

`GET /api/countries?sort=-name,created_at`

Select fields.

`GET /api/countries?fields=name`

Search by name or alpha2_code.

`GET /api/countries?q=MX`


Example:

`GET /api/countries?fields=name&limit=3&offset=0&sort=name&q=al`


```json
{
  "data": {
    "countries": [
      {
        "id": "60f4e2b9e64d1e31cc2dda3b",
        "name": "Albania"
      },
      {
        "id": "60f4e2b9e64d1e31cc2dda40",
        "name": "Algeria"
      },
      {
        "id": "60f4e2b9e64d1e31cc2dda68",
        "name": "Australia"
      }
    ]
  }
}
```

### Get country.

`GET /api/countries/:id`

**Optional parameters**:
* fields(default *all)

Example:

`GET /api/countries/60f4e2bae64d1e31cc2ddcab?fields=name,alpha2_code`

```json
{
  "data": {
    "country": {
      "id": "60f4e2bae64d1e31cc2ddcab",
      "name": "Mexico",
      "alpha2_code": "MX"
    }
  }
}
```

### Get all countries.

`GET /api/countries/all`

**Optional parameters**:
* sort(default alpha2_code)
* fields(default *all)

Example:

`GET api/countries/all?sort=-alpha2_code`

```json
{
  "data": {
    "countries": [
      {
        "id": "60f4e2bae64d1e31cc2dde75",
        "name": "Zimbabwe",
        "domains": [
          ".zw"
        ],
        "alpha2_code": "ZW",
        "alpha3_code": "ZWE",
        "calling_codes": [
          "263"
        ],
        "capital": "Harare",
        "alt_spellings": [
          "ZW",
          "Republic of Zimbabwe"
        ],
        "region": "Africa",
        "subregion": "Eastern Africa",
        "population": 14240168,
        "latlng": [
          -20,
          30
        ],
        "demonym": "Zimbabwean",
        "area": 390757,
        "gini": null,
        "timezones": [
          "UTC+02:00"
        ],
        "borders": [
          "BWA",
          "MOZ",
          "ZAF",
          "ZMB"
        ],
        "native_name": "Zimbabwe",
        "numeric_code": "716",
        "translations": {
          "de": "Simbabwe",
          "es": "Zimbabue",
          "fr": "Zimbabwe",
          "ja": "ジンバブエ",
          "it": "Zimbabwe",
          "br": "Zimbabwe",
          "pt": "Zimbabué",
          "nl": "Zimbabwe",
          "hr": "Zimbabve",
          "fa": "زیمباوه"
        },
        "cioc": "ZIM",
        "created_at": "2021-07-18T21:26:02.384-05:00",
        "updated_at": "2021-07-18T21:26:02.384-05:00",
        "currencies": [
          {
            "id": "60f4e2bae64d1e31cc2dde68",
            "code": "BWP",
            "name": "Botswana pula",
            "symbol": "P",
            "created_at": "2021-07-18T21:26:02.383-05:00",
            "updated_at": "2021-07-18T21:26:02.383-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde69",
            "code": "GBP",
            "name": "British pound",
            "symbol": "£",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6a",
            "code": "CNY",
            "name": "Chinese yuan",
            "symbol": "¥",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6b",
            "code": "EUR",
            "name": "Euro",
            "symbol": "€",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6c",
            "code": "INR",
            "name": "Indian rupee",
            "symbol": "₹",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6d",
            "code": "JPY",
            "name": "Japanese yen",
            "symbol": "¥",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6e",
            "code": "ZAR",
            "name": "South African rand",
            "symbol": "Rs",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde6f",
            "code": "USD",
            "name": "United States dollar",
            "symbol": "$",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde70",
            "code": "(none)",
            "name": null,
            "symbol": null,
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          }
        ],
        "languages": [
          {
            "id": "60f4e2bae64d1e31cc2dde71",
            "iso639_code1": "en",
            "iso639_code2": "eng",
            "name": "English",
            "native_name": "English",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde72",
            "iso639_code1": "sn",
            "iso639_code2": "sna",
            "name": "Shona",
            "native_name": "chiShona",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          },
          {
            "id": "60f4e2bae64d1e31cc2dde73",
            "iso639_code1": "nd",
            "iso639_code2": "nde",
            "name": "Northern Ndebele",
            "native_name": "isiNdebele",
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          }
        ],
        "regional_blocs": [
          {
            "id": "60f4e2bae64d1e31cc2dde74",
            "acronym": "AU",
            "name": "African Union",
            "other_acronyms": [],
            "other_names": [
              "الاتحاد الأفريقي",
              "Union africaine",
              "União Africana",
              "Unión Africana",
              "Umoja wa Afrika"
            ],
            "created_at": "2021-07-18T21:26:02.384-05:00",
            "updated_at": "2021-07-18T21:26:02.384-05:00"
          }
        ]
      }
    ]
  }
}
```
