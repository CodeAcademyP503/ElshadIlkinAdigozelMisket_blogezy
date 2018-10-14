using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class MainArticle
    {
        public MainArticle()
        {
            Comments = new HashSet<Comment>();
            Outlines = new HashSet<Outline>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public DateTime Date { get; set; }

        public string FotoPath { get; set; }

        public string FotoInfo { get; set; }

        public ICollection<Comment> Comments { get; set; }
        public ICollection<Outline> Outlines { get; set; }
    }
}