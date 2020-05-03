<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Имя пользователя :</label>
            <div class="col-sm-4">
            <input type="text" name="username" class="form-control" placeholder="Имя" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Пароль :</label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="Пароль" />
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Добавить нового пользователя</a></#if>
        <button class="btn btn-primaty" type="submit"><#if isRegisterForm>Создать<#else>Войти</#if></button>
    </form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primaty" type="submit">Войти</button>
</form>
</#macro>
