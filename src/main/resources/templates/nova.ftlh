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
    <div class="business-card-form">
        <form action="/" method="post">
            <div class="col-md-12 mb-2">
                <label for="person-name" class="form-label">Person name</label>
                <input id="person-name" name="personName" class="form-control" type="text" required/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="company-name" class="form-label">Company name</label>
                <input id="company-name" name="companyName" class="form-control" type="text" required/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="street-name" class="form-label">Street and House number</label>
                <input id="street-name" name="street" class="form-control" type="text" required/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="city-postal-code" class="form-label">Postal code and City</label>
                <input id="city-postal-code" name="cityPostalCode" class="form-control" type="text" required/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="email" class="form-label">Email</label>
                <input id="email" name="email" class="form-control" type="text"/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="phone-number" class="form-label">Phone number</label>
                <input id="phone-number" name="phoneNumber" class="form-control" type="text"/>
            </div>
            <div class="col-md-12 mb-2">
                <label for="web-site" class="form-label">Website</label>
                <input id="web-site" name="website" class="form-control" type="text"/>
            </div>

            <div class="col-md-1 mt-4 m-auto">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
