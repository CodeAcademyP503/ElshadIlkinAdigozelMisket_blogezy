using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class NoNameDbContext:DbContext
    {
        public NoNameDbContext():base("NoNameDb")
        {

        }

        public DbSet<MenyItem> MenyItems { get; set; }
        public DbSet<MenyItemIn> MenyItemIns { get; set; }
        public DbSet<MainArticle> MainArticles { get; set; }
        public DbSet<Comment> Comments { get; set; }
        public DbSet<Outline> Outlines { get; set; }
        public DbSet<MenyHeader> menyHeaders { get; set; }
        public DbSet<MainHead> MainHeads { get; set; }

        public DbSet<AboutMe> AboutMes { get; set; }
        public DbSet<Subscribe> Subscribes { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<PopularPost> PopularPosts { get; set; }
        public DbSet<TextWidget> TextWidgets { get; set; }
        public DbSet<Archive> Archives { get; set; }
        public DbSet<Tag> Tags { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<MenyItem>().ToTable("MenyItems", "Meny");
            modelBuilder.Entity<MenyItemIn>().ToTable("MenyItemIns", "Meny");
            modelBuilder.Entity<MenyItem>().Property(x => x.Name).HasMaxLength(100);
            modelBuilder.Entity<MenyItemIn>().Property(x => x.Name).HasMaxLength(100);
        }

    }
}