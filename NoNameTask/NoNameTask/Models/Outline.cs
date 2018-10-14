using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class Outline
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public MainArticle MainArticle { get; set; }
    }
}