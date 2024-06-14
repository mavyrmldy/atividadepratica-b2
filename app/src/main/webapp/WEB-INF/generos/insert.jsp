<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
    <h1>Novo Genêro</h1>
    <form action="/generos/insert" method="post">
        <div>
            <label >Nome:</label>
            <input type="text" name="nome" class="form-control"/>
        </div>
        <a href="generos/list" class="btn btn-primary">Voltar </a>
        <button type="submit" class="btn btn-success">Salvar</button>
    </form>
</div>

</body>
</html>