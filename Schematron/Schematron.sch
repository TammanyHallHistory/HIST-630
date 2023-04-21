<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"/>
<sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"> <!--Need to figure out this error -->
    <text>
        <body>
            <schemaSpec ident="Markup_George_Washington_Plunkitt" start="TEI">
                <moduleRef key="header"/>
                <moduleRef key="core" except="name"/>
                <moduleRef key="tei"/>
                <moduleRef key="textstructure" except="div1 div2 div3 div4 div5 div6 div7"/>
                <moduleRef key="namesdates" include="persName placeName orgName"/>
            </schemaSpec>
    <sch:pattern>
         <sch:rule context="tei:teiHeader/@resp">
             <sch:assert test=". = '#WR'"> This @resp attribute must be #WR.
             </sch:assert>
        <sch:let name="Standoff" value="doc('https://github.com/TammanyHallHistory/HIST-630/blob/main/TEI%20Encoding%20Project/Standoff/Standoff_Plunkitt_of_Tammany_Hall.xml')"/>
        <sch:let name="personIDs"
            value="$Standoff//person/@xml:id"/>
        <sch:let name="error" value="."/>
        <sch:assert
            test="@ref = $personIDs"
            ><sch:value-of select="$error"/> You have made an error. Acceptable values are:
            <sch:value-of select="personIDs"/>.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
<elementSpec ident="persName" module="namesdates" mode="change">
    <content>
        <sequence preserveOrder="false">
            <elementRef key="persName"/>
        </sequence> 
    </content>
    <constraintSpec ident="persName" scheme="schematron">
        <constraint>
            <sch:rule context="persName">
                <sch:let name="StandoffplaceIndex" value="doc('https://github.com/TammanyHallHistory/HIST-630/blob/main/TEI%20Encoding%20Project/Markup/Markup_George_Washington_Plunkitt.xml')"/>
                <sch:let name="error" value="."/>
                <sch:assert test="/@ref = $personIDs">
                    <sch:value-of select="personIDs"/>
                </sch:assert>
            </sch:rule>
        </constraint>
    </constraintSpec>
</elementSpec>
<elementSpec ident="placeName" module="namesdates" mode="change">
    <content>
        <textNode/>
    </content>
<constraintSpec ident="placeName" scheme="schematron">
    <constraint>
        <sch:rule context="placeName">
            <sch:let name="StandoffplaceIndex" value="doc('https://github.com/TammanyHallHistory/HIST-630/blob/main/TEI%20Encoding%20Project/Markup/Markup_George_Washington_Plunkitt.xml'"/>
            <sch:let name="error" value="."/>
            <sch:assert test="/@ref = $placeIDs">
                <sch:value-of select="placeIDs"/>
            </sch:assert>
        </sch:rule>
    </constraint>
</constraintSpec>
</elementSpec>
    <elementSpec ident="orgName" module="namesdates" mode="change">
        <content>
            <textNode/>
        </content>
        <constraintSpec ident="orgName" scheme="schematron">
            <constraint>
                <sch:rule context="orgName">
                    <sch:let name="StandoffplaceIndex" value="doc('https://github.com/TammanyHallHistory/HIST-630/blob/main/TEI%20Encoding%20Project/Markup/Markup_George_Washington_Plunkitt.xml'"/>
                    <sch:let name="error" value="."/>
                    <sch:assert test="/@ref = $orgIDs">
                        <sch:value-of select="orgIDs"/>
                    </sch:assert>
                </sch:rule>
            </constraint>
        </constraintSpec>
    </elementSpec>
   </body>
  </text>
</sch:ns>