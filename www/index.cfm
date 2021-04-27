<cfscript>
    
    myxml_raw = fileRead(expandPath('cd_catalog.xml'));

    url_xml = "https://www.omg.org/spec/CWM/20020501/02-05-01.xml"

    //Comment this out to show the read from disk example.
    cfhttp(url=url_xml,result="myxml_raw");
    myxml_raw = myxml_raw.filecontent;

    jsonDataObj = createObject("java","org.json.XML").toJSONObject(myxml_raw);
    //if you want numbers to not be converted to scientific notation, use updated JSON-java library and pass "true" as 2nd argument.
    //jsonData = createObject("java","org.json.XML").toJSONObject(myxml_raw, true)>
    jsonData = DeserializeJSON(jsonDataObj)
    writeDump(jsonData)
</cfscript>

<cfoutput>#serializeJson(jsonData)#</cfoutput>