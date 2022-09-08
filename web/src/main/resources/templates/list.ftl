<html>

<head>
    <script src="${ctx.contextPath}/ssmp/js/jquery-3.6.0.min.js"></script>
</head>
<body>


<br/>


<a href="/users">add</a>

<form action="" method="POST" id="del">
    <input type="hidden" name="_method" value="DELETE"/>
</form>


<table border="1" cellpadding="10" cellspacing="1" >
    <tr>
        <th>id</th>
        <th>head</th>
        <th>namea</th>
        <th>sex</th>
        <th>age</th>
        <th>email</th>
        <th>birthdate</th>
        <th>edit</th>

    </tr>
    <#list list as l>
        <tr>
            <th>${l.id}</th>
            <th><img src='/picturePreview?id=${l.id}' style="width: 200px"/></th>
            <th>${l.name}</th>
            <th><#if l.sex =0 >男<#else >女
                </#if>
            </th>
            <th>${l.age}</th>
            <th>${l.email}</th>
            <th>${l.birthdate?string('yyyy-MM-dd')}</th>
            <th>
                <a class="delete" href="/users/${(l.id)}">删除</a><br/>
                <a href="/users/${(l.id)}">修改</a>
            </th>
            <th><a href="/aaaa/${l.id}">下载</a></th>
        </tr>
    </#list>
</table>


<br/>

<script>
    $(function () {
        $(".delete").click(function () {
            var href = $(this).attr("href");
            $("#del").attr("action", href).submit();
            return false;
        });

        $("#lang").change(function () {
            var lang = $("#lang").val();
            window.location.href = "i18n?locale=" + lang;
        });
    });
</script>
</body>
</html>