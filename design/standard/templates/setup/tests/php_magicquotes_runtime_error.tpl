<h3>{$result_number}. {"PHP option"|i18n("design/standard/setup/tests")} <i>Magic Quotes Runtime</i> {"is enabled"|i18n("design/standard/setup/tests")}</h3>

<p>
 {"eZ publish will not work properly with this option on."|i18n("design/standard/setup/tests")} <i>{"normal"|i18n("design/standard/setup/tests")}</i>.
</p>
<p>
 {"To turn it off edit your %phpini configuration and set %magic_quotes_runtime to %offtext."
  |i18n( "design/standard/setup/tests",,
         hash( '%phpini', "<i>php.ini</i>",
               '%magic_quotes_runtime', "<i>magic_quotes_runtime</i>",
               '%offtext', "<i>Off</i>" ) )}
 {"More information on the subject can be found at %1."|i18n("design/standard/setup/tests",,array('<a href="http://www.php.net/manual/en/ref.info.php#ini.magic-quotes-runtime">php.net</a>'))}
</p>
<label>{"php.ini example:"|i18n("design/standard/setup/tests")}</label><br/>
<pre class="example">
magic_quotes_runtime = 0
</pre>
<p>
{"Alternatively you may create a file called %1 in your eZ publish root folder and add the following:"|i18n("design/standard/setup/tests",,array(concat("<i>",".htaccess","</i>")))}
</p>
<label>{".htaccess example:"|i18n("design/standard/setup/tests")}</label><br/>
<pre class="example">
php_value magic_quotes_runtime 0
</pre>
