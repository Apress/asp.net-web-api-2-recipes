﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Apress.Recipes.WebApi.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Author { get; set; }
        public string Title { get; set; }
    }
}