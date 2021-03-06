<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="dateTime" uri="personalTags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Clock with custom tag</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body class="bg-secondary">


<!--Clock module -->
<main role="main">
    <div class="container d-flex justify-content-center">
        <div class="card border-info m-3 bg-dark text-info shadow">
            <div class="card-header bg-transparent border-info p-0">
                <h1 class="border border-info bg-info text-light shadow p-3 text-center">
                    <dateTime:day/>
                </h1>
            </div>
            <div class="card-body text-success text-center  p-0">
                <h2 class="border border-info bg-info text-light shadow p-3">
                    <dateTime:date-time format="HH:mm"/>
                </h2>
            </div>
            <div class="card-footer bg-transparent border-info text-center p-0">
                <h5 class="border border-info bg-info text-light shadow p-3 m-0">
                    <dateTime:date-time format="dd.MM.yyyy"/>
                </h5>
            </div>
        </div>
    </div>
</main>
<jsp:include page="../main-js.jsp"/>

</body>
<html>