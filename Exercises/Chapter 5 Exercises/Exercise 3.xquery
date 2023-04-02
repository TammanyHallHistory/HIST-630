xquery version "3.1";

let $names := ("Cliff", "Joe", "Patrick")

for $name in $names

return fn:concat("Hello my name is ", $name, "!")