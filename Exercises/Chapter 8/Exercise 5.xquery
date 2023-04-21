xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $doc := 

<lg>
    <l>-"a man, a ruler, and a sage;</l>
    <l>A truly worthy model of the age."</l>
</lg>; 

declare function local:transform($nodes as node()*)
{
    for $node in $nodes
    return
        typeswitch ($node)
        case text ()
            return
                $node
        case element (lg)
            return
                <ol>{local:transform($node/node())}</ol>
        case element (l)
            return
                <li>{local:transform($node/node())}</li>
        default
            return
                $node

};

local:transform($doc)