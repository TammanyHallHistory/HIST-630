xquery version "3.1";


declare function local:construct-english-list( 
    $list as xs:string*) as xs:string
        {
        fn:concat(fn:string-join(fn:subsequence($list, 1, 2), ", "), ", and ", fn:subsequence($names, 3))}; 

let $names := ("Shinpei Gotō", "Gentaro Kodama", "Kenijirō Den")

return local:construct-english-list(construct-english-list)

(: for $name in $names
return fn:tokenize($name, " ") :)