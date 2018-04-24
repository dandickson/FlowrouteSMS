$APIUser = '' #Flowroute API User
$APIPass = '' | ConvertTo-SecureString -AsPlainText -Force #Flowroute API Password
$APIURI = 'https://api.flowroute.com/v2.1/messages' #URI of Flowroute API
$CallbackURI = '' #Callback URI for message confirmation

Function Send-SMS($SMSTo, $SMSFrom, $SMSBody) {
    Invoke-WebRequest -Uri $APIURI -Credential (New-Object System.Management.Automation.PSCredential($APIUser, $APIPass)) -Method Post -ContentType application/vnd.api+json -Body (@{to=$SMSTo;from=$SMSFrom;body=$SMSBody;dlr_callback=$CallbackURI} | ConvertTo-Json)  
    }
