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
        protected void Page_Load(object sender, EventArgs e)
		{
            MenyHeaders = new List<MenyHeader>();
            MenyItems=new List<MenyItem>();
            MenyItemIns=new List<MenyItemIn>();
            using (NoNameDbContext db = new NoNameDbContext())
            {
                MenyItems =  db.MenyItems.ToList();
                MenyHeaders =  db.menyHeaders.ToList();
                MenyItemIns = db.MenyItemIns.ToList();

                var newMeny = MenyItems.GroupJoin(MenyItemIns, x => x.Id, y => y.MenyItem_Id, (xx, ys) => new
                {
                    Name = xx.Name,
                    MenyItemIns=ys.Select(x=>new {Id=x.Id, Name = x.Name,MenyItem_id=x.MenyItem_Id}).ToList(),
                }).ToList();
                for (int i = 0; i < newMeny.Count; i++)
                {
                    if (newMeny[i].MenyItemIns.Count!=0)
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

        private async Task Method()
        {
            using(NoNameDbContext db=new NoNameDbContext())
            {
                MenyItems = await db.MenyItems.ToListAsync();
                MenyHeaders = await db.menyHeaders.ToListAsync();
            }
        }
    }
}