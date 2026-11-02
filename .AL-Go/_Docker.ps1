$containerName = "fasoft"

$passwd = ConvertTo-SecureString -AsPlainText -Force -String "admin"
$credential = new-object -typename System.Management.Automation.PSCredential -ArgumentList "admin",$passwd

& .\localDevEnv.ps1 -containerName $containerName -auth "UserPassword" -credential $credential -fromVSCode:$False -accept_insiderEula:$True
