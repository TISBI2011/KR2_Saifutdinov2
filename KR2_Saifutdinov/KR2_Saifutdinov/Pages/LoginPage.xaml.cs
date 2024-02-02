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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void Blogin_Click(object sender, RoutedEventArgs e)
        {
            string login = TBLogin.Text;
            string password = TBPassword.Text;

            var loggedUser = App.DB.Sotrudnik.FirstOrDefault(x=> x.Login == login && x.Password == password);
            if (loggedUser == null)
            {
                MessageBox.Show("Логин или пароль введен неверно");
                return;
            }
            if(loggedUser.IdRole == 1)
            {
            NavigationService.Navigate(new AdminPage());
                
            }
            if (loggedUser.IdRole == 2)
            {

            }
            NavigationService.Navigate(new MainPage());
            App.loggdUser = loggedUser;
        }

        private void BRegistrationNewSotrudnik_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegisrationPage());
        }
    }
}
