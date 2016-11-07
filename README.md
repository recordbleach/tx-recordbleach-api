#CONNECTING TO TEXAS RECORDBLEACH API

1. Sign Up via **POST** request to https://tx-recordbleach-api.herokuapp.com/api/registrations
    
     {
        "user":{
          "password":"sarah", 
          "email": "sarah@swifty.com"
        }
    }
    


2. Sign In via **POST** request to https://tx-recordbleach-api.herokuapp.com/oauth/token
    
    {
         "email":"sarah@swifty.com", 
         "password":"sarah", 
         "grant_type":"password"
    
    This will return an auth key.



3. Submit petition form data via **POST** to https://tx-recordbleach-api.herokuapp.com/petitions 
    
  header: 
    key: "Authorization"
    value: "Bearer c58e50df61207848e7c67aacceddf7fc9c04156678a7daaa53f49ff1a4d31af4" (plug in the auth key you get)    
    
   {
    "petition": {
      "legal_name": "NAME NAME",
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
    
4. **GET** petition JSON data via https://tx-recordbleach-api.herokuapp.com/api/petitions/id
5. **GET** PDF petition via https://tx-recordbleach-api.herokuapp.com/api/petitions/id.pdf
6. **Example:** Final petition looks like this: https://github.com/recordbleach/tx-recordbleach-api/blob/master/download.pdf
