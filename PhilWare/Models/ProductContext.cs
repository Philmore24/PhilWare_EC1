﻿using System.Data.Entity;

namespace PhilWare.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("PhilWare")
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
    }

}