using com.logali as logali from '../db/schema';

//Expose the Catalog entity as a service
service CatalogService {
    entity Products as projection on logali.Products;
}