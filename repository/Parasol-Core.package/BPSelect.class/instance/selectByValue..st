misc.
selectByValue: valueString

	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/support/ui/Select.html#selectByValue(java.lang.String)
	"

	| options |
	
	self flag: 'This implementation is not complete, check the Java version'.
	
	options := (element findElementsByXPath: './/option[@value=''' , valueString , ''']').
	options do: [ :option |
		option click.
	].