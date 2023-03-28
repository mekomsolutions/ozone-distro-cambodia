import fetch from 'node-fetch';
import * as fs from 'fs';

var requestHeaders = new Headers();
requestHeaders.append("Authorization", "Basic YWRtaW46QWRtaW4xMjM=");
requestHeaders.append("Content-Type", "application/json");

var requestOptions = {
  method: 'GET',
  headers: requestHeaders,
  redirect: 'follow'
};

const baseUrl = 'http://localhost';

fetch(baseUrl + "/openmrs/ws/rest/v1/session", requestOptions)
  .then(
    function(response) {
    
    // Set new headers 
    requestHeaders.append("Cookie", response.headers.raw()['set-cookie'])
    requestOptions.headers = requestHeaders
  
    let file = JSON.parse(fs.readFileSync('users.json'));
    file.users.forEach((user) => {
        var rawUser = JSON.stringify(user);
        requestOptions.body = rawUser;
        requestOptions.method = 'POST';
    
        console.log("Creating user '" + user.username + "'...")
        fetch(baseUrl + "/openmrs/ws/rest/v1/user", requestOptions)
            .then(response => response.text())
            .then(result => console.log(result))
            .catch(error => console.log('error', error));   
    });
  }
  )
  .then(result => console.log(result))
  .catch(error => console.log('error', error));

