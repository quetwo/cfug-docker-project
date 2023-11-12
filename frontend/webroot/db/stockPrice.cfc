component persistent="true"
{

    property name="priceID" fieldtype="id" generator="native" column="priceID";
    property name="timeCaptured" fieldtype="column" ormType="datetime";
    property name="price" fieldtype="column" ormType="double";

}
