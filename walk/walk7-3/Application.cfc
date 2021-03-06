<cfcomponent output="false">
	
	<cfset this.name = "ProposalManager73">
	<cfset this.datasource = "ProposalManager">
	<cfset this.sessionManagement = true>
	<cfset this.clientManagement = false>
	<cfset this.serialization.serializeQueryAs = "struct">

	<cfset this.restsettings.autoregister="true"/>
	<cfset this.restsettings.servicemapping="proposalmanager"/>
	<cfset this.restsettings.usehost=true/>

	<!--- step 3 --->
	
	<cffunction name="onApplicationStart">
		
		<cfset application.basehref = "/ftcf2016/walk/walk7-3/">
		<cfset application.cfcpath = "ftcf2016.walk.walk7-3.components.">
		<cfset application.cssHref = "/ftcf2016/shared/css/">
		<cfset application.uploadDir = expandpath('.') & "/../../data">
		<cfset application.PDFGenDir = expandpath('.') & "/generatedpdfs/">
		
		<cfset application.cfc = structnew()>
		
		<cfset local.cfcList = "Base,Login,Asset,Company,AssetType">
		
		<cfloop list="#local.cfcList#" index="local.thisCfcName">
			<cfset application.cfc[local.thisCfcName] = createObject(
				"component",
				"#application.cfcpath##local.thisCfcName#"
			)>
		</cfloop>
		
		<cfreturn true>
	</cffunction>

	<cffunction name="onRequestStart">
		<cfargument name="targetpage" required="true" type="string">
		
		<cfif isdefined("url.init")>
			<cfset onApplicationStart()>
			<cfset onSessionStart()>
		</cfif> 
		
		<cfif not isUserInAnyRole("SuperAdmin,Admin") and
			  arguments.targetpage contains "/admin/">
			  
			  <cflocation url="#application.basehref#login/index.cfm">
			  
		</cfif>
		
	</cffunction>
	
	
	<cffunction name="onSessionStart">
		
		<cfif not isdefined("session.username")>
			<cfset session.username = "Anonymous">
		</cfif>
		
	</cffunction>

</cfcomponent>