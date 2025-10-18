[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
    <div class="detail">
        <div class="vizitka">
            <form method="post" action="/delete/${id}" class="d-flex flex-row-reverse bd-highlight">
                <input type="hidden" value="${id}" name="deleteIndex">
                <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
            </form>
            <div class="jmeno">${businessCard.personName}</div>
            <div class="firma">${businessCard.companyName}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${businessCard.street}</div>
                    <div>${businessCard.cityPostalCode}</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>[#if businessCard.email??]${businessCard.email}[#else]-[/#if]</span></div>
                    <div><i class="las la-phone-alt"></i><span>[#if businessCard.phoneNumber??]${businessCard.phoneNumber}[#else]-[/#if]</span></div>
                    <div><i class="las la-globe"></i><span>[#if businessCard.website??]${businessCard.website}[#else]-[/#if]</span></div>
                </div>
            </div>
        </div>

        <div class="mapa">
            <iframe style="border:none" src="https://frame.mapy.cz/?q=${businessCard.fullAddress?url("UTF-8")}" width="100%" height="100%" frameborder="0"></iframe>
        </div>
        <nav>
            <a href="/" class="navigation">◂ Back to Homepage</a>
        </nav>
    </div>
</body>
</html>
