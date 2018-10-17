using NoNameTask.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoNameTask
{
	public partial class _Default : Page
	{
       
        
        public List<MenyItem> MenyItems { get;set; }
        public List<MenyHeader> MenyHeaders { get;set; }
        public List<MenyItemIn> MenyItemIns { get;set; }

        public List<MainArticle> MainArticle { get; private set; }
        public List<Comment> Comments { get; set; }
        public List<Outline> Outlines { get; set; }

        public List<AboutMe> AboutMes { get; set; }
        public List<Subscribe> Subscribes { get; set; }
        public List<Category> Categories { get; set; }
        public List<PopularPost> PopularPosts { get; set; }
        public List<Archive> Archives { get; set; }
        public List<TextWidget> TextWidgets { get; set; }
        public List<Tag> Tags { get; set; }

        protected void Page_Load(object sender, EventArgs e)
		{
            RegisterAsyncTask(new PageAsyncTask(GetData));
        }

        private async Task GetData()
        {
            using (NoNameDbContext db = new NoNameDbContext())
            {
                MainArticle = await db.MainArticles.ToListAsync();
                Comments = await db.Comments.ToListAsync();
                Outlines = await db.Outlines.ToListAsync();

                MenyItems = await db.MenyItems.ToListAsync();
                MenyHeaders =await db.menyHeaders.ToListAsync();
                MenyItemIns =await db.MenyItemIns.ToListAsync();

                

                AboutMes =await db.AboutMes.ToListAsync();
                Subscribes =await db.Subscribes.ToListAsync();
                Categories =await db.Categories.ToListAsync();
                PopularPosts =await db.PopularPosts.ToListAsync();
                Archives =await db.Archives.ToListAsync();
                TextWidgets =await db.TextWidgets.ToListAsync();
                Tags = db.Tags.ToList();

                var newMeny = MenyItems.GroupJoin(MenyItemIns, x => x.Id, y => y.MenyItem_Id, (xx, ys) => new
                {
                    Name = xx.Name,
                    MenyItemIns = ys.Select(x => new { Id = x.Id, Name = x.Name, MenyItem_id = x.MenyItem_Id }).ToList(),
                }).ToList();
                for (int i = 0; i < newMeny.Count; i++)
                {
                    if (newMeny[i].MenyItemIns.Count != 0)
                    {
                        foreach (var item in newMeny[i].MenyItemIns)
                        {
                            MenyItemIn menyItemIn = new MenyItemIn();
                            menyItemIn.Id = item.Id;
                            menyItemIn.Name = item.Name;
                            menyItemIn.MenyItem_Id = item.MenyItem_id;
                            MenyItems[i].MenyItemIns.Add(menyItemIn);
                        }
                    }
                }

            }
        }
    }
}