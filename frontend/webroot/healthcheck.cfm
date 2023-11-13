<cfquery name="checkDB">
    SELECT *
    FROM stock
</cfquery>

<cfif checkDB.recordcount EQ 0>
    <cfquery>
        INSERT INTO stock (stockID, name, symbol) VALUES (1,'Adobe Inc','ADBE'),(2,'Microsoft Inc.','MSFT'),(3,'Amazon Inc.','AMZN'),(4,'Apple Computers Inc.','AAPL');
    </cfquery>
    <cfquery>
        INSERT INTO stockPrice (priceID, timeCaptured, price, stockID) VALUES (1,'2023-11-12 16:50:00.000000',597.22,1),(2,'2023-11-12 16:50:00.000000',369.67,2),(3,'2023-11-12 16:50:00.000000',143.56,3),(4,'2023-11-12 16:50:00.000000',186.4,4);
    </cfquery>
</cfif>

OK!
