xquery version "3.1";

declare context item := document {

<name>
    <forename>Patrick</forename>
    <surname>Grigsby</surname>
</name>
} ;

/name/forename/fn:contains("Patrick", "a")