using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class MenyItem
    {
        public MenyItem()
        {
            MenyItemIns =new HashSet<MenyItemIn>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public ICollection<MenyItemIn> MenyItemIns { get; set; }
    }
}