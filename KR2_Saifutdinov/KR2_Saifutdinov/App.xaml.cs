﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using KR2_Saifutdinov.Models;

namespace KR2_Saifutdinov
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static KR2_SaifutdinovEntities DB = new KR2_SaifutdinovEntities();
        public static Sotrudnik loggdUser;
    }
}
