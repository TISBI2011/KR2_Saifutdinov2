using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using KR2_Saifutdinov.Models;

namespace KR2_Saifutdinov.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegisrationPage.xaml
    /// </summary>
    public partial class RegisrationPage : Page
    {
        Sotrudnik contextSotrudnik;
        public RegisrationPage()
        {
            InitializeComponent();
            CBRoles.ItemsSource = App.DB.Role.ToList();
            contextSotrudnik = new Sotrudnik();
            DataContext = contextSotrudnik;
            CBPoste.ItemsSource = App.DB.Post.ToList();
            CBOrganization.ItemsSource = App.DB.Organization.ToList();
        }

        private void BRegistrate_Click(object sender, RoutedEventArgs e)
        {
            App.DB.Sotrudnik.Add(contextSotrudnik);
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }

        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
