using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Input;
using Vlc.DotNet.Wpf;

namespace M3u8Player
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly DirectoryInfo vlcLibDirectory;
        private VlcControl control;
        private List<Menu> MenuItems = new List<Menu>();

        public MainWindow()
        {
            //try
            //{
                InitializeComponent();
            //}
            //catch (Exception ex)
            //{

            //    throw;
            //}

            var currentAssembly = Assembly.GetEntryAssembly();
            var currentDirectory = new FileInfo(currentAssembly.Location).DirectoryName;
            // Default installation path of VideoLAN.LibVLC.Windows
            vlcLibDirectory = new DirectoryInfo(System.IO.Path.Combine(currentDirectory, "libvlc", IntPtr.Size == 4 ? "win-x86" : "win-x64"));

            //BuildPlaylist();
            BuildListView();


        }

        protected override void OnClosing(CancelEventArgs e)
        {
            this.control?.Dispose();
            base.OnClosing(e);
        }

        private void OnStopButtonClick(object sender, RoutedEventArgs e)
        {
            this.control?.Dispose();
            this.control = null;
        }

        private void BuildListView()
        {
            // Read all m3u8Playlists
            var logFile = File.ReadAllLines("SavedList.txt");
            var m3u8Playlists = new List<string>(logFile);

            // Build ListView1
            foreach (var m3u8Playlist in m3u8Playlists)
            {
                Menu menu = new Menu() { Name = RemoveSpecialCharacters(m3u8Playlist.Split('/')[4].Split('.')[0].ToUpper()), Url = m3u8Playlist };
                MenuItems.Add(menu);
            }
            int i = 1;
            MenuItems.OrderBy(x => x.Name).ToList().ForEach(x =>
            {
                x.Name = $"{i.ToString()} - {x.Name}";
                ListView1.Items.Add(x.Name);
                i++;
            });

            //ListView1.BorderThickness = new Thickness(1.01, 1.01, 1.01, 1.01);
            //ListView1.BorderBrush = Brushes.Red;
        }

        private string RemoveSpecialCharacters(string str)
        {
            StringBuilder sb = new StringBuilder();
            foreach (char c in str)
            {
                if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
                {
                    sb.Append(c);
                }
                else
                {
                    sb.Append(' ');
                }
            }
            return sb.ToString();
        }

        private void BuildPlaylist()
        {
            // Fetch All URLs
            List<string> urls = new List<string>();
            string baseUrl = $"http://ebravo.pk/classic/webtv-[key].html";

            using (WebClient webClient = new WebClient())
            {
                string html = webClient.DownloadString("http://ebravo.pk/classic/webtv");
                Console.WriteLine(html);

                //string pattern = @"webtv([+-]?(?=\.\d|\d)(?:\d+)?(?:\.?\d*))(?:[eE]([+-]?\d+))?html";
                string pattern = @"webtv\-(.*?)\.html";
                foreach (Match match in Regex.Matches(html, pattern))
                {
                    if (match.Success && match.Groups.Count > 0)
                    {
                        var url = baseUrl.Replace("[key]", match.Groups[1].Value);
                        urls.Add(url);
                        Console.WriteLine(url);
                    }
                }
                Console.ReadLine();
            }


            // Fetch All m3u8Playlists
            List<string> m3u8Playlists = new List<string>();
            foreach (var url in urls)
            {
                using (WebClient webClient = new WebClient())
                {
                    string html = webClient.DownloadString(url);

                    string pattern = @"http:/\/(.*?)\/live\/(.*?)\/playlist.m3u8";
                    //http:/\/(.*?)\/live\/(.*?)\/playlist.m3u8

                    foreach (Match match in Regex.Matches(html, pattern))
                    {
                        if (match.Success && match.Groups.Count > 0)
                        {
                            var m3u8Playlist = match.Groups[0].Value;
                            m3u8Playlists.Add(m3u8Playlist);
                            Console.WriteLine(m3u8Playlist);
                        }
                    }
                }
            }

            // Save all m3u8Playlists
            using (TextWriter tw = new StreamWriter("SavedList.txt"))
            {
                foreach (String s in m3u8Playlists)
                    tw.WriteLine(s);
            }
        }

        private void OnPlayButtonClick(object sender, RoutedEventArgs e)
        {
            string selectedItem = ListView1.Items[ListView1.SelectedIndex].ToString();

            this.control?.Dispose();
            this.control = new VlcControl();
            this.ControlContainer.Content = this.control;
            this.control.SourceProvider.CreatePlayer(this.vlcLibDirectory);

            // This can also be called before EndInit
            this.control.SourceProvider.MediaPlayer.Log += (_, args) =>
            {
                string message = $"libVlc : {args.Level} {args.Message} @ {args.Module}";
                System.Diagnostics.Debug.WriteLine(message);
            };

            control.SourceProvider.MediaPlayer.Play(new Uri(MenuItems.First(x => x.Name == selectedItem).Url));
        }

        private void OnMouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            string selectedItem = ListView1.Items[ListView1.SelectedIndex].ToString();

            this.control?.Dispose();
            this.control = new VlcControl();
            this.ControlContainer.Content = this.control;
            this.control.SourceProvider.CreatePlayer(this.vlcLibDirectory);

            // This can also be called before EndInit
            this.control.SourceProvider.MediaPlayer.Log += (_, args) =>
            {
                string message = $"libVlc : {args.Level} {args.Message} @ {args.Module}";
                System.Diagnostics.Debug.WriteLine(message);
            };

            control.SourceProvider.MediaPlayer.Play(new Uri(MenuItems.First(x => x.Name == selectedItem).Url));

        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
            // Set tooltip visibility

            if (Tg_Btn.IsChecked == true)
            {
                //tt_home.Visibility = Visibility.Collapsed;
                //tt_contacts.Visibility = Visibility.Collapsed;
                //tt_messages.Visibility = Visibility.Collapsed;
                //tt_maps.Visibility = Visibility.Collapsed;
                //tt_settings.Visibility = Visibility.Collapsed;
                //tt_signout.Visibility = Visibility.Collapsed;
            }
            else
            {
                //tt_home.Visibility = Visibility.Visible;
                //tt_contacts.Visibility = Visibility.Visible;
                //tt_messages.Visibility = Visibility.Visible;
                //tt_maps.Visibility = Visibility.Visible;
                //tt_settings.Visibility = Visibility.Visible;
                //tt_signout.Visibility = Visibility.Visible;
            }
        }

        private void Tg_Btn_Unchecked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 1;
            ListView1.Visibility = Visibility.Collapsed;
            lblChannels.Visibility = Visibility.Collapsed;
            btnPlay.Visibility = Visibility.Collapsed;
            btnStop.Visibility = Visibility.Collapsed;
            VolumeControl.Visibility = Visibility.Collapsed;
        }

        private void Tg_Btn_Checked(object sender, RoutedEventArgs e)
        {
            img_bg.Opacity = 0.3;
            ListView1.Visibility = Visibility.Visible;
            lblChannels.Visibility = Visibility.Visible;
            btnPlay.Visibility = Visibility.Visible;
            btnStop.Visibility = Visibility.Visible;
            VolumeControl.Visibility = Visibility.Visible;
        }

        private void BG_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Tg_Btn.IsChecked = false;
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }


        private bool FullScreen = false;
        private WindowState windowState { get; set; }
        private WindowStyle windowStyle { get; set; }

        private void MaxBtn_Click(object sender, RoutedEventArgs e)
        {
            if (!FullScreen)
            {
                windowState = WindowState;
                windowStyle = WindowStyle;
                WindowState = WindowState.Maximized;
                WindowStyle = WindowStyle.None;
                FullScreen = true;
            }
            else
            {
                WindowState = windowState;
                WindowStyle = windowStyle;
                FullScreen = false;
            }
        }

        // Change the volume of the media.
        private void ChangeMediaVolume(object sender, RoutedPropertyChangedEventArgs<double> args)
        {
            try
            {
                if (this.control != null)
                {
                    int volume = (int)volumeSlider.Value;
                    this.control.SourceProvider.MediaPlayer.Audio.Volume = volume;
                }
            }
            catch (Exception)
            {
            }
        }


        private void MinBtn_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
    }

    public class Menu
    {
        public string Name { get; set; }

        public string Url { get; set; }
    }

}

//this.control?.Dispose();
//this.control = new VlcControl();
//this.ControlContainer.Content = this.control;
//this.control.SourceProvider.CreatePlayer(this.vlcLibDirectory);

//// This can also be called before EndInit
//this.control.SourceProvider.MediaPlayer.Log += (_, args) =>
//{
//    string message = $"libVlc : {args.Level} {args.Message} @ {args.Module}";
//    System.Diagnostics.Debug.WriteLine(message);
//};

//control.SourceProvider.MediaPlayer.Play(new Uri("http://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_surround-fix.avi"));

//string selectedItem = ListView1.Items[ListView1.SelectedIndex].ToString();
//string currentDirectory = System.IO.Path.GetDirectoryName(Assembly.GetEntryAssembly().Location);
// Default installation path of VideoLAN.LibVLC.Windows
//DirectoryInfo libDirectory = new DirectoryInfo(System.IO.Path.Combine(currentDirectory, "libvlc", IntPtr.Size == 4 ? "win-x86" : "win-x64"));
//vlcPlayer.SourceProvider.CreatePlayer(libDirectory); /* pass your player parameters here */ //options
//vlcPlayer.SourceProvider.MediaPlayer.Play(new Uri(selectedItem));


//vlcPlayer.MediaPlayer.VlcLibDirectory = new DirectoryInfo(@"c:\Program Files (x86)\VideoLAN\VLC\");
//vlcPlayer.MediaPlayer.EndInit();
//vlcPlayer.MediaPlayer.Play(new Uri("http://download.blender.org/peach/" + "bigbuckbunny_movies/big_buck_bunny_480p_surround-fix.avi"));


//var options = new[]
//{
//    "--intf", "dummy", /* no interface                   */
//    "--vout", "dummy", /* we don't want video output     */
//    "--no-audio", /* we don't want audio decoding   */
//    "--no-video-title-show", /* nor the filename displayed     */
//    "--no-stats", /* no stats */
//    "--no-sub-autodetect-file", /* we don't want subtitles        */
//    "--no-snapshot-preview", /* no blending in dummy vout      */
//};

//vlcPlayer.SourceProvider.MediaPlayer.SetMedia(new Uri(selectedItem)); //mediaOptions
//vlcPlayer.SourceProvider.MediaPlayer.Play(new Uri(selectedItem));

//var mediaOptions = new[]
//    {
//        ":sout=#rtp{sdp=rtsp://127.0.0.1:554/}",
//        ":sout-keep"
//    };

//using (var mediaPlayer = new Vlc.DotNet.Core.VlcMediaPlayer(libDirectory))
//{
//var mediaOptions = new[]
//{
//    ":sout=#rtp{sdp=rtsp://127.0.0.1:554/}",
//    ":sout-keep"
//};
//mediaPlayer.SetMedia(new Uri(selectedItem), mediaOptions);
////mediaPlayer.SetMedia(new Uri("http://hls1.addictradio.net/addictrock_aac_hls/playlist.m3u8"),mediaOptions);
//mediaPlayer.SetMedia(new Uri(selectedItem), mediaOptions);
//mediaPlayer.Play();

//Console.WriteLine("Streaming on rtsp://127.0.0.1:554/");
//Console.WriteLine("Press any key to exit");
//Console.ReadLine();
//}


