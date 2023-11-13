component persistent="true"
{

    property name="stockID" fieldtype="id" generator="native" column="stockID";
    property name="name" fieldtype="column" ormType="string";
    property name="symbol" fieldtype="column" ormType="string";

    property name="prices" fieldtype="one-to-many" cfc="stockPrice" fkcolumn="stockID"
            type="array" orderby="timeCaptured asc" singularname="price" cascade="all" remotingFetch="true";


    public boolean function generateRandomPrice()
    {
        writeDump(var="Generating Random Price for " & this.getSymbol(), output="console", label="*****");
        prices = this.getPrices();
        lastPrice = prices[len(prices)].getPrice();
        priceDeviation = lastPrice * 0.1;
        newPrice = randRange((lastPrice-priceDeviation)*100, (lastPrice+priceDeviation)*100)/100;
        writeDump(var=lastPrice, output="console", label="Last Price");
        writeDump(var=newPrice, output="console", label="New Price");

        newPriceItem = entityNew("stockPrice");
        newPriceItem.settimeCaptured(now());
        newPriceItem.setPrice(newPrice);
        addPrice(newPriceItem);
        ormFlush();

        return true;
    }

}
