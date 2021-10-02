using System.Collections.Generic;
using System.Data.Entity;

namespace PhilWare.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "SmartPhones"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Laptops"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Game Console"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Computer Component"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Smart TV"
                },
            };

            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "IPHONE 12",
                    Description = "One of the new phones on the market and hey its an iphone you still going to buy no matter what it say.",
                    ImagePath="iphone12.jpg",
                    UnitPrice = 2000.00,
                    CategoryID = 1
               },
                new Product
                {
                    ProductID = 2,
                    ProductName = "PREDATOR GE4",
                    Description = "The fastest laptop available of the market today with SDD technology and good heat management.",
                    ImagePath="Predator_GeE4.jpg",
                    UnitPrice = 1000.00,
                     CategoryID = 2
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "PLAYSTATION 5",
                    Description = "With the new SSD technology sony have provided gives smooth gaming comes with controller.",
                    ImagePath="PS5.jpg",
                    UnitPrice = 5000.00,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "RTX 3060 CARD",
                    Description = "One of the best graphic card on the market is very fast ",
                    ImagePath="rtx3060_graphicCard.jpg",
                    UnitPrice = 800.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "INTEL I9 PROCESSOR",
                    Description = "The fastest processor available of the market today with  good heat management. ",
                    ImagePath="intel_i9_proccessor.jpg",
                    UnitPrice = 300.00,
                    CategoryID = 4
                },

                new Product
                {
                    ProductID = 6,
                    ProductName = "SAMSUNG UHD 75",
                    Description = "The best tv on market good display",
                    ImagePath="samsung_UDH_75inch.jpg",
                    UnitPrice = 900.00,
                    CategoryID = 5
                },

            };

            return products;
        }
    }
}