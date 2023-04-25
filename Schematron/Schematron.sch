<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
<sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
         <sch:rule context="tei:teiHeader/@resp">
             <sch:assert test=". = '#WR'"> This @resp attribute must be #WR.
             </sch:assert>
             <sch:let name="Standoff" value="doc('https://raw.githubusercontent.com/TammanyHallHistory/HIST-630/main/TEI%20Encoding%20Project/Standoff/Standoff_Plunkitt_of_Tammany_Hall.xml')"/>
        <sch:let name="personIDs"
            value="$Standoff//person/@xml:id"/>
        <sch:let name="error" value="."/>
        <sch:assert
            test="@ref = $personIDs"
            ><sch:value-of select="$error"/> You have made an error. Acceptable values are:
            <sch:value-of select="personIDs"/>.
            </sch:assert>
        </sch:rule>

        <sch:rule context="persName">
                <sch:let name="StandoffpersonIndex" value="doc('https://raw.githubusercontent.com/TammanyHallHistory/HIST-630/main/TEI%20Encoding%20Project/Standoff/Standoff_Plunkitt_of_Tammany_Hall.xml')"/>
                <sch:let name="personIDs" value = "$StandoffpersonIndex//tei:person/@xml:id"/>
                <sch:let name="error" value="."/>
                <sch:assert test="/@ref = $personIDs">
                    <sch:value-of select="personIDs"/>
                </sch:assert>
            </sch:rule>
        
        <sch:rule context="placeName">
            <sch:let name="StandoffplaceIndex" value="doc('https://raw.githubusercontent.com/TammanyHallHistory/HIST-630/main/TEI%20Encoding%20Project/Standoff/Standoff_Plunkitt_of_Tammany_Hall.xml')"/>
            <sch:let name="placeIDs" value = "$StandoffplaceIndex//tei:place/@xml:id"/>
            <sch:let name="error" value="."/>
            <sch:assert test="/@ref = $placeIDs">
                <sch:value-of select="placeIDs"/>
            </sch:assert>
        </sch:rule>
   
      
        <sch:rule context="orgName">
            <sch:let name="StandofforganizationIndex" value="doc('https://raw.githubusercontent.com/TammanyHallHistory/HIST-630/main/TEI%20Encoding%20Project/Standoff/Standoff_Plunkitt_of_Tammany_Hall.xml')"/>
                    <sch:let name="organizationIDs" value = "$StandofforganizationIndex//tei:organization/@xml:id"/>
                    <sch:let name="error" value="."/>
                    <sch:assert test="/@ref = $organizationIDs">
                        <sch:value-of select="organizationIDs"/>
                    </sch:assert>
                </sch:rule>
    </sch:pattern>
</sch:schema>