#CONNECTING TO TEXAS RECORDBLEACH API

RecordBleach is a tool that enables Texans to prepare necessary court documents for expunction of certain arrests, charge, and convictions. RecordBleach is an open source project, and you are welcome to contribute! 

The project has 2 apps: a Rails API that handles the data and document generation. This is the repo for the Rals API. The front end is a React based app hosted at https://github.com/recordbleach/recordBleach_front_end. Decoupling the front end and backend was a design choice that allowed members of a TechForJustice hackathon team to fully contribute without tripping over tooling. 

Back End Tech:
     * Ruby 2.3.1
     * Rails 5
     * Gems
          * doorkeeper
          * bcrypt
          * rack-cors
          * jbuilder
          * wicked_pdf
          * wkhtmltopdf-binary
     * PostgreSQL
     * OAuth

  

##Sign Up via **POST** request to https://tx-recordbleach-api.herokuapp.com/api/registrations
```
     {
        "user":{
          "password":"sarah", 
          "email": "sarah@swifty.com"
        }
    }
```   


## Sign In via **POST** request to https://tx-recordbleach-api.herokuapp.com/oauth/token
``` 
    {
         "email":"sarah@swifty.com", 
         "password":"sarah", 
         "grant_type":"password"
      }
```
    This will return an auth key.


## Submit petition form data via **POST** to https://tx-recordbleach-api.herokuapp.com/petitions 
```
  header: 
    key: "Authorization"
    value: "Bearer c58e50df61207848e7c67aacceddf7fc9c04156678a7daaa53f49ff1a4d31af4"   
```
```
   {
    "petition": {
      "legal_name": "SARAH SWIFT",
      "dob": 19850911,
      "ssn": "222-22-2222",
      "dl": "22222222",
      "address": "4203 Montrose",
      "city": "Houston",
      "state": "Texas",
      "county": "Harris",
      "zip": "77006",
      "sex": "Female",
      "race": "White",
      "offense_date": 20160101,
      "offense_county": "Harris",
      "arresting_agency": "Houston Police Department",
      "arrest_date": 20160101,
      "a_address": "4203 Montrose",
      "a_city": "Houston",
      "a_state": "Texas",
      "a_county": "Harris",
      "charged": true,
      "charge_date": 20160102,
      "charged_offenses": "hacking justice",
      "charge_cause_number": "123-123",
      "county_court_at_law": false,
      "county_court_at_law_number": null,
      "municipal_court": false,
      "municipal_court_name": false,
      "district_court": true,
      "district_court_name": "508th Judicial District",
      "acquittal": true,
      "acquittal_date": 20160501,
      "dismissal": false,
      "dismissal_date": null,
      "convicted": false,
      "conviction_date": null,
      "pardon": false,
      "pardon_date": null,
      "overturned": false,
      "overturned_date": null,
      "probation": false,
      "deferred_adjudication": false
    }
  }
```
## **GET** petition JSON data via https://tx-recordbleach-api.herokuapp.com/api/petitions/id
## **GET** PDF petition via https://tx-recordbleach-api.herokuapp.com/api/petitions/id.pdf
### **Example:** Final petition looks like this: https://github.com/recordbleach/tx-recordbleach-api/blob/master/download.pdf
