<cfoutput
><p>endpoint stuff here</p>

<p>
	<strong>URI</strong>: /rest/#rc.application#/#rc.resource#/<input value="" placeholder="{resID}"> <em>default to /</em><br />
</p>

<p>
	<strong>Methods:</strong>
	options created<br />
	<input name="methods" type="checkbox" value="Get"> Get<br />
	<input name="methods" type="checkbox" value="Post"> Post<br />
	<input name="methods" type="checkbox" value="Put"> Put<br />
	<input name="methods" type="checkbox" value="Patch"> Patch<br />
	<input name="methods" type="checkbox" value="Delete"> Delete<br />
</p>
	<strong>Properties:</strong>
	<br />
	<input name="properties" type="checkbox" value="Paged"> Paged<br />
	<input name="properties" type="checkbox" value="Secured"> Secured<br />

<p>

</p>

<p>
<h4>Notes</h4>
<ul>
	<li>collection or member</li>
	<li>responce: Content-Type / properties</li>
	<li>body: Accepts</li>
	<li>headers - Authorization for securied or Token</li>
	<li>Query Params - paging / filter</li>
</ul>

</p>
</cfoutput>