$file = Get-ChildItem *.tgz
az login --service-principal -u $env:SERVICEPRINCIPALID -p $env:SERVICEPRINCIPALKEY --tenant $env:SERVICEPRINCIPALTENANTID
az acr helm repo add --name itdepends
az acr helm push --name itdepends $file.Name