How you use this?

Simples.

Install docker.

Then run:

```
docker compose up
```

This will pull commandbox, start ACF 2021.0.1+325996 ( as defined in the docker-composed.yaml file ) and run the applicaiton.

Simply browser to http://127.0.0.1:8080 to run the file in /www ( index.cfm by default ).

You can live edit locally and just hit refresh.

Original Solution from: https://coldfusion.adobe.com/2018/12/converting-xml-json-using-xmltransform/