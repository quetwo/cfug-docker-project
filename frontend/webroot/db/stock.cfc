component persistent="true"
{

    property name="stockID" fieldtype="id" generator="native" column="stockID";
    property name="name" fieldtype="column" ormType="string";
    property name="symbol" fieldtype="column" ormType="string";

    property name="lastPrices" fieldtype="one-to-many" cfc="stockPrice" fkcolumn="stockID" type="array";

}