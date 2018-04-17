<!---
File   : footer.cfm
Purpose: Common Footer
By     : Steve Drucker
Created: 04/17/2015

Usage:
Invoke at the bottom of a CFM by using <cfinclude>

Modification Log:
Date        Action
=============================================
04/18/2015  Created
--->

<hr>
<cfset today = now()>

<cfset r = randrange(0,255)>
<cfset g = randrange(0,255)>
<cfset b = randrange(0,255)>

<cfoutput>
	<div style="color:rgb(#variables.r#,#variables.g#,#variables.b#)">
	Copyright &copy; #year(variables.today)#. All rights reserved
	</div>
</cfoutput>



</body>
</html>
