
namespace NoNameTask.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class menyItemPath : DbMigration
    {
        public override void Up()
        {
            AddColumn("Meny.MenyItemIns", "PagePath", c => c.String());
            AddColumn("Meny.MenyItems", "PagePath", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("Meny.MenyItems", "PagePath");
            DropColumn("Meny.MenyItemIns", "PagePath");
        }
    }
}
