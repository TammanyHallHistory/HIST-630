xquery version "3.1"; 



declare function local:construct-english-list( 


let $construct-english-list := $list as xs:string*) as xs:string
        {
        fn:concat(fn:string-join(fn:subsequence($list, 1, 2), ", "), ", and ", fn:subsequence($names, 3))}

return local:construct-english-list(construct-english-list)

let $names := ("Shinpei Gotō", "Gentaro Kodama", "Kenijirō Den", "x", "y", "z")