component {

	this.name="xml-to-json";
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
	this.sessionManagement=false;
	this.clientManagement=false;
	this.setClientCookies=false;
	
	this.datasources = {
		pg: {
			driver		= "postgresql",
			host        = server.system.environment.DB_HOST,
            port        = "5432",
			database	= "postgres",
			username	= server.system.environment.DB_USER,
			password	= server.system.environment.DB_PASS
		}
	};

	this.datasource = "pg";

	function onApplicationStart() {

		application.cloud_credentials = {
            "vendorName" : "AWS",
            "region" : "ap-southeast-2",
            "accessKeyId" : server.system.environment.TestACCESS_KEY, 
            "secretAccessKey" : server.system.environment.TestSECRET_KEY
        };

		return true;
	}

}