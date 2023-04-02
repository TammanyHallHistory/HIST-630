xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:construct-tei-persName(
$fullName as xs:string*) as element(tei:persName)
{
<persName xmls="http://www.tei-c.org/ns/1.0">
    <forename xmls="http://www.tei-c.org/ns/1.0">{fn:tail(fn:tokenize($fullName, " "))}</forename>
    <surname xmlns="http://www.tei-c.org/ns/1.0">{fn:tail(fn:tokenize($fullName, " "))}</surname>
</persName>

let $names := ("Shinpei Gotō", "Gentaro Kodama", "Kenijirō Den")

for $name in $names
    return local:construct-tei-persName($name)