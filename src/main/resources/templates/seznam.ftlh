[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
    [#list businessCardList]
        <div class="seznam">
        [#items as businessCard]
            <a href="${businessCard?index}">
                <div class="vizitka">
                    <div class="jmeno">${businessCard.personName}</div>
                    <div class="firma">${businessCard.companyName}</div>
                    <div class="udaje">
                        <div class="adresa">
                            <div>${businessCard.street}</div>
                            <div>${businessCard.cityPostalCode}</div>
                        </div>
                        <div class="kontakty">
                            <div><i class="las la-at"></i> <span>${businessCard.email}</span></div>
                            <div><i class="las la-phone-alt"></i> <span>${businessCard.phoneNumber}</span></div>
                            <div><i class="las la-globe"></i> <span>${businessCard.website}</span></div>
                        </div>
                    </div>
                </div>
            </a>
        [/#items]
        </div>
        [#else]
            <div>There are no business cards.</div>
    [/#list]
</body>
</html>
