<form method="post" action={"/setup/systemupgrade/"|ezurl}>

<h1>{"System upgrade"|i18n("design/standard/setup")}</h1>

{section show=$md5_result}
  {section show=count($md5_result)|eq(0)}
    <div class="feedback">
    {"File consistency check OK"|i18n("design/standard/setup")}
    </div>
  {section-else}
    <div class="feedback">
    {"Warning, it is not safe to upgrade without checking the modifications done to the following files :"|i18n("design/standard/setup")}<br />
    <p>
      {section loop=$md5_result}
        {$:item|wash}
        {delimiter}<br />{/delimiter}
      {/section}
    </p>
    </div>
  {/section}
{/section}

<div class="buttonblock">
<p>{"Click a button to check file consistency."|i18n("design/standard/setup")}
  <input type="submit" name="MD5CheckButton" value="{"Check files"|i18n("design/standard/setup")}" />
  ( {"warning, this might take a while"|i18n("design/standard/setup")} )
</p>
</div>

</form>
