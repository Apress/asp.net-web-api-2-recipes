﻿using System.Web;
using System.Web.Mvc;

namespace Apress.Recipes.WebApi.WebHost
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
