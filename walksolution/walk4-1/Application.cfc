<cfcomponent output="false">
	
	<cfset this.name = "ProposalManagerSolution41Solution">
	<cfset this.datasource = "ProposalManager">
	<cfset this.sessionManagement = true>
	<cfset this.clientManagement = false>
	
	<cffunction name="onApplicationStart">
		
		<cfset application.baseHref = "/ftcf2016/walksolution/walk4-1/">
		<cfset application.cssHref = "/ftcf2016/shared/css/">
		
		<cfreturn true>
	</cffunction>

	<cffunction name="onRequestStart">
		<cfargument name="targetpage" required="true" type="string">
		
		<cfif isdefined("url.init")>
			<cfset onApplicationStart()>
		</cfif> 
		
	</cffunction>
	
</cfcomponent>