namespace com.logali;


type Address : {
    Street     : String(100);
    City       : String(100);
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);

}

entity Products {
    key ID               : UUID;
        name             : String(100);
        Description      : String(500);
        ImageUrl         : String(500);
        ReleaseDate      : DateTime;
        DiscontinuedDate : DateTime;
        Price            : Decimal(16, 2);
        Height           : Decimal(16, 2);
        Width            : Decimal(16, 2);
        Depth            : Decimal(16, 2);
    Quantity         : Decimal(16, 2);
    Supplier_ID      : UUID;
};

entity Suppliers {
    key ID      : UUID;
        Name    : String(100);
        Address : Address;
        Email   : String(100);
        Phone   : String(15);
        fax     : String(15);
};

entity Categories {
    key ID   : String(1);
        name : String(100);
};

entity StockAvailability {
    key ID          : Integer;
        Description : String(500);
};

entity Currencies {
    key ID          : String(3);
        Description : String(500);
};

entity UnitOfMeasures {
    key ID          : String(3);
        Description : String(500);
};

entity DimensionUnits {
    key ID          : String(2);
        Description : String(500);
};

entity Months {
    key ID               : String(2);
        Description      : String(500);
        ShortDescription : String(3);

};

entity ProductReview {
    key name        : String(100);
        Description : String(500);
        Rating      : Integer;
        ReviewDate  : DateTime;
        comment     : String(500);
};

entity SalesData {
    key ID              : Integer;
        DeliveryDate    : DateTime;
        DeliveryStatus  : String(100);
        DeliveryAddress : String(500);
        SalesPerson     : String(100);
        SalesAmount     : Decimal(16, 2);
        Currency        : String(3);
        revenue         : Decimal(16, 2);
};
