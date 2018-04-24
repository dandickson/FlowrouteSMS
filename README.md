# FlowrouteSMS

A simple PowerShell function to send SMS messages via the [Flowroute](https://www.flowroute.com) API

### Configuration

  - Configure the *$APIUser* and *$APIPass* variables from the *API Control* page in your Flowroute preferences
  - Ensure you are using the correct version of the API in *$APIURI*
  - Add a *$CallbackURI* to receive delivery notifications

### Parameters

- -SMSTo is the number of the message recipient
- -SMSFrom is the number you want the message to be sent from **(Must be a registered number in Flowroute)**
- -SMSBody the message you wish to send (Can be multiline)

### Example
```
Send-SMS -SMSTo '15551234567' -SMSFrom '15557891234' -SMSBody 'Hello World!'
```

### Modifications

If you don't want to receive message delivery reports to a callback URL remove the following code from the JSON post
```
;dlr_callback=$CallbackURI
