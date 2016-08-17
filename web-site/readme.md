1. open <tomcat>/conf/server.xml

2. go to <Host tag and add context path to point web-site\main folder

<Host name="localhost"  appBase="webapps"
	unpackWARs="true" autoDeploy="true">
....

	<Context path="/" docBase="D:\projects\csx-mpost-v2\web-site\main"/>
	
</Host>
