component rest="true" restPath="/stocks"
{

    // Full path is GET https://<host>/rest/demo/stocks
    remote function getAllStocks() httpMethod="GET"
    {
        myStocks = entityload("stock");

        //datatables.net will fight you if you don't return the JSON payload under the "data" node.
        myJSON = {};
        myJSON["data"] = myStocks;
        return myJSON;
    }

}
