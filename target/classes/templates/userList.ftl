<#import "parts/common.ftl" as c>

<@c.page>
Список пользователей

<table>
    <tread>
    <tr>
        <th>Имя</th>
        <th>Статус</th>
        <th></th>
    </tr>
    </tread>
    <tbody>
<#list users as user>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}">edit</a> </td>
    </tr>
</#list>
    </tbody>
</table>
</@c.page>