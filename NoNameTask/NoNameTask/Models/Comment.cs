using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoNameTask.Models
{
    public class Comment
    {
        public int Id { get; set; }

        public string CommentPersonName { get; set; }

        public string CommentText { get; set; }

        public MainArticle MainArticle { get; set; }

    }
}