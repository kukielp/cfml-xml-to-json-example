<cfscript>
    myxml_raw = fileRead(expandPath('cd_catalog.xml'));
    myxml = XmlParse(myxml_raw)
    xls_raw = fileRead(expandPath('xml-to-json.xsl'));
    xls = XmlParse(xls_raw)

    jsonData = deserializeJSON(
        xmlTransform(myxml,xls)
    );

    writeDump(jsonData)
</cfscript>

<cfoutput>#serializeJson(jsonData)#</cfoutput>