xquery version "3.1";

<books>
    <book n="1">
        <title>In the Shadow of the Poorhouse</title>
        <author>Michael B. Katz</author>
        <date year="1986">1986</date>
        <publisher>
            <city>New York</city>
            <press>Basic Books</press>
        </publisher>
        <identifier type="ISBN-10">0465032109</identifier>
        <identifier type="ISBN-13">9780465032109-</identifier>
    </book>
    <book n="2">
        <title>The Age of Reform</title>
        <author>Richard Hofstadter</author>
        <date year="1955">1955</date>
        <publisher>
            <city>New York</city>
            <press>Vintage Books</press>
        </publisher>
        <identifier type="ISBN-10">0394700953</identifier>
        <identifier type="ISBN-13">978-0394700953</identifier>
    </book>
    <book n="3">
        <title>Emigrants and Exiles: Ireland the Irish Exodus to North America</title>
        <author>Kerby A. Miller</author>
        <date year="1985">1985</date>
        <publisher>
            <city>Oxford</city>
            <press>Oxford University Press</press>
        </publisher>
        <identifier type="ISBN-10">0295035941</identifier>
        <identifier type="ISBN-13">978-0195051872</identifier>
    </book>
    <book n="4">
        <title>Rainbow's End: Irish-Americans the Dilemmas of Urban Machine Politics, 1840-1985</title>
        <author>Steven P. Erie</author>
        <date year="1988">1988</date>
        <publisher>
            <city>Berkley</city>
            <press>University of California Press</press>
        </publisher>
        <identifier type="ISBN-10">0520071832</identifier>
        <identifier type="ISBN-13">978-0520071834</identifier>
    </book>
    <book n="5">
        <title>Charles Stewart Parnell: The Man and his Family</title>
        <author>C.F. Foster</author>
        <date year="1976">1976</date>
        <publisher>
            <city>Trowbridge and Esher, UK</city>
            <press>The Harvester Press Limited</press>
        </publisher>
        <identifier type="ISBN-10">085527817X</identifier>
        <identifier type="ISBN-13">978-0855278175</identifier>
    </book>
</books>

/books/book[fn:contains (./title, "Man")]