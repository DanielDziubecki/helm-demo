$file = Get-ChildItem *.tgz
$found = $file -match '.*-(\d+(\.\d+){1,3}).*'
if ($found) {
    $version = $matches[1]
    $fullname = "itdepends-$($version).tgz"
    az acr helm repo add --name itdepends
    az acr helm push --name itdepends $fullname 
}