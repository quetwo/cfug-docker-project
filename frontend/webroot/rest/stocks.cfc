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

    remote function generateNewStockPrices() httpMethod="GET" restPath="/generate"
    {
        myStocks = entityload("stock");
        numberOfMoves = randRange(1,len(myStocks));
        writeDump(var="Adding Entries for " & numberOfMoves & " stocks", output="console");
        stockIndex = arrayNew();
        for(i=1; i LTE len(myStocks); i++)
        {
            arrayAppend(stockIndex,i);
        }
        for(i=0; i LT numberOfMoves; i++)
        {
            randNum = randRange(1,len(stockIndex));
            myStocks[stockIndex[randNum]].generateRandomPrice();
            arrayDeleteAt(stockIndex,randNum);

        }
    }

}
