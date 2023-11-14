<cfquery name="checkDB">
    SELECT *
    FROM stock
</cfquery>

<cfif checkDB.recordcount EQ 0>
    <cfquery>
        INSERT INTO `stock` (`stockID`, `name`, `symbol`) VALUES (1,'Adobe Inc','ADBE'),(2,'Microsoft Inc.','MSFT'),(3,'Amazon Inc.','AMZN'),(4,'Apple Computers Inc.','AAPL'),(5,'Alphabet Inc','GOOGL'),(6,'Nvidia Corp','NVDA'),(7,'Meta Platforms Inc.','META'),(8,'Taiwan Semiconductor Manfacturing Company','TSM'),(9,'Broadcom Inc.','AVGO'),(10,'Oracle Corp.','ORCL'),(11,'Intel Corp','INTC'),(12,'Tesla Inc.','TSLA');
    </cfquery>
    <cfquery>
        INSERT INTO `stockPrice` (`priceID`, `timeCaptured`, `price`, `stockID`) VALUES (1,'2023-11-12 16:50:00.000000',597.22,1),(2,'2023-11-12 16:50:00.000000',369.67,2),(3,'2023-11-12 16:50:00.000000',143.56,3),(4,'2023-11-12 16:50:00.000000',186.4,4),(13,'2023-11-12 16:50:00.000000',135.43,5),(14,'2023-11-12 16:50:00.000000',496.56,6),(15,'2023-11-12 16:50:00.000000',336.31,7),(16,'2023-11-12 16:50:00.000000',125.66,8),(17,'2023-11-12 16:50:00.000000',44.96,9),(18,'2023-11-12 16:50:00.000000',366.25,10),(19,'2023-11-12 16:50:00.000000',39.41,11),(20,'2023-11-12 16:50:00.000000',237.14,12);
    </cfquery>
</cfif>

OK!
