#https://smartystreets.com/docs/cloud/us-street-api
function Get-SmartyStreetsAPIURL {
    param (
        [ValidateSet("us-street","international-street","us-zipcode","us-autocomplete","us-extract")]$APIName
    )
    "https://$APIName.api.smartystreets.com/"
}

function Invoke-SmartyStreetsAPI {
    param (
        [ValidateSet("us-street","international-street","us-zipcode","us-autocomplete","us-extract")]$APIName
    )
}

function Get-SmartyStreetsUSStreeAddress {
    param (
        [ValidateLength(1,36)][String]$input_id,
        [ValidateLength(1,64)][String]$street,
        [ValidateLength(1,64)][String]$street2,
        [ValidateLength(1,32)][String]$secondary,
        [ValidateLength(1,64)][String]$city,
        [ValidateLength(1,32)][String]$state,
        [ValidateLength(1,16)][String]$zipcode,
        [ValidateLength(1,64)][String]$lastline,
        [ValidateLength(1,64)][String]$addressee,
        [ValidateLength(1,64)][String]$urbanization,
        [ValidateRange(1,10)][int]$candidates,
        [ValidateSet("strict","range","invalid")][String]$match
    )

}

$SmartyStreetsPricing = [PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 250
    CostInUSD = 0
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 500
    CostInUSD = 20
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 1000
    CostInUSD = 30
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 5000
    CostInUSD = 50
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 10000
    CostInUSD = 80
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 25000
    CostInUSD = 200
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 50000
    CostInUSD = 300
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 100000
    CostInUSD = 500
},
[PSCustomObject]@{
    UnitOfMeasure = "Monthly"
    QuantityOfAPICalls = 1000000000000
    CostInUSD = 1000
}


function Get-SmartyStreatsBestPricing {

}