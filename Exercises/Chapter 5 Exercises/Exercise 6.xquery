xquery version "3.1";

declare context item :=
fn:doc("https://raw.githubusercontent.com/dlschwartz/sandbox/master/XQ4HumBooks.xml");

for $book at $n in books/book

    let $year := $book/date/@year
    group by $year
    order by $year descending
   
return
    <book published="{$year}">
        { $book/title }
    </book>
    