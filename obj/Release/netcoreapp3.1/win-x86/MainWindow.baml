   M S B A M L   `   `   `  ���� E  AM3u8Player, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:M3u8Player
M3u8Player      M3u8Player.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:M3u8Player       � Title$  
MainWindow��$	��600��$	��800�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � 	Resources    tb_mouse_over �� ImageSource  
font_style �� 
TargetType �� Property �� Value  CloseBtn_MouseOver  	Close_btn	 �� 
TargetType
 ��Name J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  MaxBtn_MouseOver  Max_btn  MinBtn_MouseOver  Min_btn  tb_style��%�  &	        &	       &	 �     &	 �     7  &	 �    &	 �    7  &	 A    &	 `    7  &	     7   7   7   7   �� $ /Assets/img_menu.png���� " ��.���  � ��$$ Fonts/Roboto-Light.ttf #Roboto)���  � ��$ Center=���  � ��$
 Left=���  � ��
 �������  � ��$ 20(��� $ /Assets/img_close.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z��$
 True�� P�  �@J�IsMouseOver$
 True��. ��� $ button��8    � ���� $ /Assets/img_max.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z��$
 True�� P�  �@J�IsMouseOver$
 True��. ��� $ button��8    � ���� $ /Assets/img_Min.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z��$
 True�� P�  �@J�IsMouseOver$
 True��. ��� $ button��8    � ���� " d�.���  � �� �� "	 d�.R��� $
 border��#��z��#��z��$
 True�� P�  �@J�IsMouseOver$
 true��. ��� $ border��8    � ���� $ border��8   � ��P�  �@d�	IsChecked$
 trueY�. ��� $ border��8   � ���� $ border��8   � ��.��� -   $��Grid1��
���   � � ColumnDefinitions �� �� �� �� �� �� �� ��  � RowDefinitions �� �� �� �� �� �� �� �� .+�� -    �Name$ BG��$��0��$��0��$��8��$��8������ -   
img_bg��$  /Assets/img_background.png�� j� Stretch$
 Fill=��� -    ��Name$ ControlContainer��$��0��$��0��$��8��$��8��� -   $ nav_pnl��$
��Left=�$��65�����#2E333A$��0��$��0��$��8��$��3��.+�� -   $ st_pnl�� �� $��70 ��� $��60 ��� $��40 ��� $��40 ��� .+�� $��0��$��70��.+��� $��1��$��0��$��
73,-20,0,0q�$��M E N U��
�������$��22(�
������ $
��Left=�$��Center=�#��[  J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 10Q�   ShadowDepth$ 1Q�   	Direction$	 -90Q�   Color$ White��d� -    d�Name$ Tg_Btn��$��0��$��Center=�$
��Left=�$��
18,-20,0,0q�$��30��$��30��$��0q� � Cursor$
 Hand��#��[ ���� $ /Assets/img_menu.png��$
 Fill=� � Triggers :�  :� RoutedEvent$ ToggleButton.Unchecked��.[��� .���� -    ��Name$ HideStackPanel��.��W�  �� 
TargetName$ nav_pnl��  �� TargetProperty$  Width�! g� 	BeginTime	! 0:0:0" W� From" 230	# W� To# 65$ g� Duration$$ 0:0:0.75D�:� $ ToggleButton.Checked��.[��� .���� -	   $ ShowStackPanel��.��W� $ nav_pnl��$  Width�	! 0:0:0" 65# 230$$ 0:0:0.75D�� -
   $ VolumeControl��$��1��$y�	Collapsed=�
������.+��� .+��� $��5,5,5,5q�
�������$��Center=�#��[ Volume�� -   % ��Name$% volumeSlider��$��5,0,5,10q�& � Minimum$& 0Q�' � Maximum$	' 100Q�( � Value$	( 100Q�� $��2�� �� �� .+��� -   $��btnPlay��$��0��$
��Play��
����iA�
�������$��15(�
�������$��0,0,1,0q�$��Stretch=�$��Center=�$��5,5,0,5q�$y�	Collapsed=�$
 Hand���� -   $��btnStop��$��1��$
��Stop��
����iA�
�������$��15(�
�������$��0,0,0,0q�$��Stretch=�$��Center=�$��5,5,0,5q�$y�	Collapsed=�$
 Hand���� -   $��lblChannels��$��3��$��Channels��
���\\��
�������$��15(�
�������$��0,0,0,1q�$��Stretch=�$��Center=�$��Center=�$��5,5,0,5q�$y�	Collapsed=��� -   ) ��Name$) 	ListView1��$��4��
������ 
������ $��Disabled=�$
��Auto=�$y�	Collapsed=����� " ��* �� Triggers* P�  �@J�IsMouseOver$
 true��. ���  � ��
 ��iA���  � ��
 �����.���  � ��
 �   ���  � ��$ 0,0,0,1q���  �@�Cursor$
 Hand����  � ��
 �������  � ��
 �   ���  � ��$ 15(��� -   + ��Name$+ MaxMin��$��40��$��40��$��0q�#��[ $��20,40,40,66q�$��5��$��1��$��0��$��2��$
 Hand������ $ /Assets/img_Min.png���� -   $+ MaxBtn��$��40��$��40��$��0q�#��[ $��20,40,40,66q�$��6��$��1��$��0��$��2��$
 Hand������ $ /Assets/img_max.png���� -   $+ CloseBtn��$��40��$��40��$��0q�#��[ $��20,40,40,66q�$��7��$��1��$��0��$��2��$
 Hand������ $ /Assets/img_close.png��