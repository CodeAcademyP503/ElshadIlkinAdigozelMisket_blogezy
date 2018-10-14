using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class MenyItemIn
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public int MenyItem_Id { get; set; }
    }
}