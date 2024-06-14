<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo jogo</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
    <h1>Novo jogo</h1>
    <form action="/jogos/insert" method="post">
        <div>
            <label >Titulo:</label>
            <input type="text" name="titulo" class="form-control"/>
        </div>
        <div>
            <label class="form-label">Genêro</label>
            <select name="genero" class="form-select">
            <c:forEach var="item" items="${generos}">
                <option value="${item.id}">${item.nome}</option>
            </c:forEach>
            </select>
        </div>

        <br/>
        <a href="jogos/list" class="btn btn-primary">Voltar </a>
        <button type="submit" class="btn btn-success">Salvar</button>
    </form>
</div>

</body>
</html>