﻿using System;

namespace Apress.Recipes.WebApi
{
    public class HelloService : IService
    {
        public string SaySomething(string something)
        {
            return something;
        }
    }
}