using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public  class  GetDbData
    {
        private NoNameDbContext NoNameDbContext { get; set; }
        public GetDbData()
        {
            NoNameDbContext = new NoNameDbContext();
        }

        public void Close()
        {
            NoNameDbContext.Dispose();
        }
    }
}