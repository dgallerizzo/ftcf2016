<cfcomponent output="false">
	
	<cfset this.name = "ProposalManager43Solution">
	<cfset this.datasource = "ProposalManager">
	<cfset this.sessionManagement = true>
	<cfset this.clientManagement = false>
	
	<cffunction name="onApplicationStart">
		
		<cfset application.basehref = "/ftcf2016/walksolution/walk4-3/">
		<cfset application.cfcpath = "ftcf2016.walksolution.walk4-3.components.">
		<cfset application.cssHref = "/ftcf2016/shared/css/">

		<cfset application.cfc = {
			login = createObject("component","#application.cfcpath#Login")
		}> 
	
		<cfreturn true>
	</cffunction>

	<cffunction name="onRequestStart">
		<cfargument name="targetpage" required="true" type="string">
		
		<cfif isdefined("url.init")>
			<cfset onApplicationStart()>
		</cfif> 
		
	</cffunction>
	

</cfcomponent>