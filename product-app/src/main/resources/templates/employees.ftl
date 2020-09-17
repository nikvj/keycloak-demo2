<#import "/spring.ftl" as spring>
<html>

<h1>Melvault Employees:</h1>
<ul>
<#list employees as employee>
    <li>${employee}</li>
</#list>
</ul>
<br>
<a href="/logout">Logout</a>
</html>