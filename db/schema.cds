namespace com.logali;

entity Products {
    key ID               : Integer;
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
};

entity Suppliers {
    key ID         : Integer;
        name       : String(100);
        street     : String(100);
        City       : String(100);
        State      : String(2);
        PostalCode : String(5);
        Country    : String(3);
        email      : String(100);
        phone      : String(15);
        fax        : String(15);
        website    : String(100);
};

entity Category {
    key ID   : Integer;
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