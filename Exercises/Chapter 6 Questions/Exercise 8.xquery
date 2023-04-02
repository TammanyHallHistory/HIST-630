xquery version "3.1"; 

declare function local:transform-persName (
$nameList as element (tei:persName)) as xs:string
{
    fn:concat(fn:upper-case($nameList/tei:surname/text()), " ", $nameList/tei:forename/text())
};

declare variable $persName :=
<persName xmlns="http://www.tei-c.org/ns/1.0">
    <forename>Shinpei</forename>
    <surname>Gotō</surname>
</persName>;

for $name in $persName
return local:transform-persName($name)