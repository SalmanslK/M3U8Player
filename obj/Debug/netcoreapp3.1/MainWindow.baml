   M S B A M L   `   `   `  ����E  AM3u8Player, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:M3u8Player
M3u8Player  5          M3u8Player.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      *localclr-namespace:M3u8Player     5        � Title$  
MainWindow��5   	   $	��600��5	   	   $	��800��5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 	Resources 5         tb_mouse_over �� ImageSource  
font_style �� 
TargetType �� Property �� Value  CloseBtn_MouseOver  	Close_btn	 �� 
TargetType
 ��Name J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  MaxBtn_MouseOver  Max_btn  MinBtn_MouseOver  Min_btn  tb_style��%~  &	        &	 .     &	 >    &	 m    7  &	 �    &	 �    7  &	 H    &	 u    7  &	 �    7   7   7   7   �� 5   
   $ /Assets/img_menu.png��6+   �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5      �� 53   
   $ /Assets/img_close.png��60   �� 55   
   " ��6"   .�56      ��  � �� 57      �� 58      "	 ��6&   .R�59      �� $
 button��6!   $��0q�5:   !   #��z��5;   !   $
 True��5<   !   6>    5=      P� 5>       �@J�IsMouseOver$
 True��5?   &   . �5@   "   �� $ button��5A   )   8    � ��5B   )   5C      5E      5G      5H      �� 5J   
   $ /Assets/img_max.png��6.   �� 5L   
   " ��6    .�5M      ��  � �� 5N      �� 5O      "	 ��6&   .R�5P      �� $
 button��6!   $��0q�5Q   !   #��z��5R   !   $
 True��5S   !   6>    5T      P� 5U       �@J�IsMouseOver$
 True��5V   &   . �5W   "   �� $ button��5X   )   8    � ��5Y   )   5Z      5\      5^      5_      �� 5b   
   $ /Assets/img_Min.png��6.   �� 5d   
   " ��6    .�5e      ��  � �� 5f      �� 5g      "	 ��6&   .R�5h      �� $
 button��6!   $��0q�5i   !   #��z��5j   !   $
 True��5k   !   6>    5l      P� 5m       �@J�IsMouseOver$
 True��5n   &   . �5o   "   �� $ button��5p   )   8    � ��5q   )   5r      5t      5v      5w      �� 5y   
   " d�6!   .�5z      ��  � �� 5{      �� 5|      "	 d�6&   .R�5}      �� $
 border��6"   #��z��5~   "   #��z��5   "   $
 True��5�   "   6?    5�      P� 5�       �@J�IsMouseOver$
 true��6=   . �5�   "   �� $ border��5�   )   8    � ��5�   )   �� 5�   "   $ border��5�   )   8   � ��5�   )   5�      P� 5�       �@d�	IsChecked$
 trueY�6;   . �5�   "   �� $ border��5�   )   8   � ��5�   )   �� 5�   "   $ border��5�   )   8   � ��5�   )   5�      5�      5�      5�      5�      .��5�      � -   5        $��Grid1��5�      
���   � � ColumnDefinitions 5�   
   �� 5�      6!   �� 5�      6!   �� 5�      6!   �� 5�      6!   �� 5�      6!   �� 5�      6!   �� 5�      6!   �� 5�      6!    � RowDefinitions 5�   
   �� 5�      6   �� 5�      6   �� 5�      6   �� 5�      6   �� 5�      6   �� 5�      6   �� 5�      6   �� 5�      6   .+�5�   
   � -   5         �Name$ BG��5�      $��0��5�      $��0��6   $��8��6,   $��8��6=   ��5�      �� 5�      -   5        
img_bg��$  /Assets/img_background.png��5�   -    j� Stretch$
 Fill=�6V   5�      �� 5�   
   -   5         ��Name$ ControlContainer��5�   [   $��0��6   $��0��6&   $��8��66   $��8��6G   6[   � 5�   
   -   5        $ nav_pnl��5�      $
��Left=�5�      $��65��5�      ���#2E333A$��0��5�      $��0��5�      $��8��5�      $��3��5�      .+�5�      � -   5        $ st_pnl��5�       5�      �� 5�      $��70 �6$   62   �� 5�      $��60 �6$   62   �� 5�      $��40 �6$   62   �� 5�      $��40 �6$   62   �� 5�      6&   .+�5�      � $��0��6   $��70��6$   .+�5�      �� $��1��6!   $��0��5�   !   $��
73,-20,0,0q�5�   !   $��M E N U��5�   !   
�������$��22(�5�   %   
������ $
��Left=�5�   %   $��Center=�5�   %   #��[ 5�   %    J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�         
BlurRadius$ 10Q�60      ShadowDepth$ 1Q�5�   4      	Direction$	 -90Q�5�   4      Color$ White��5�   4   5�      d� 5�      -   5         d�Name$ Tg_Btn��5�   #   $��0��5�   '   $��Center=�5�   '   $
��Left=�5�   '   $��
18,-20,0,0q�5�   '   $��30��5�   '   $��30��5�   '   $��0q�5�   '    � Cursor$
 Hand��5�   '   #��[ 5�   '   ��5�      �� 5�      $ /Assets/img_menu.png��6)   $
 Fill=�6L    � Triggers 5�      :� 5�       :� RoutedEvent$ ToggleButton.Unchecked��6+   .[�5�   "   �� .��5�   &   �� -   5         ��Name$ HideStackPanel��5�   1   .��5�   *   W�  �� 
TargetName$ nav_pnl��5�   1     �� TargetProperty$  Width�5�   1   ! g� 	BeginTime	! 0:0:05�   1   " W� From" 2305�   1   	# W� To# 656<   $ g� Duration$$ 0:0:0.75D�5�   1   5�   '   5�   #   5�      :� 5�      $ ToggleButton.Checked��6+   .[�5   "   �� .��5  &   �� -	   5        $ ShowStackPanel��5  1   .��5  *   W� $ nav_pnl��5  1   $  Width�5  1   	! 0:0:05  1   " 655  1   # 2306;   $$ 0:0:0.75D�5  1   5	  '   5
  #   5     5     5     � 5     -
   5        $ VolumeControl��5     $��1��6.   $y�	Collapsed=�6;   
������ .+�5     �� .+�5     �� $��Volume��5     
������ 
�������$��15(�5     
�������$��0,0,0,0q�5     $��Stretch=�5     $��Center=�5     $��Center=�5     �� 5     -   5        % ��Name$% volumeSlider��5  !   $��5,0,5,15q�5     & � Minimum$& 0Q�5!  !   ' � Maximum$	' 100Q�5"  !   ( � Value$	( 100Q�5#  !   5$     5%     � 5'     $��2��6    5(     �� 5)     6-   �� 5*     6-   .+�5,     �� -   5        $��btnPlay��5,  -   $��0��6   $
��Play��5-     
������ 
�������$��15(�50     
�������$��0,1,1,0q�52     $��Stretch=�53     $��Center=�54     $��5,5,0,5q�55     $y�	Collapsed=�56     $
 Hand��57     58     �� 59     -   5        $��btnStop��59  -   $��1��6   $
��Stop��5:     
������ 
�������$��15(�5=     
�������$��0,1,0,0q�5?     $��Stretch=�5@     $��Center=�5A     $��5,5,0,5q�5B     $y�	Collapsed=�5C     $
 Hand��5D     5E     5F     �� 5H     -   5        $��lblChannels��5H  &   $��3��6   $��Channels��5I     
������ 
�������$��15(�5L     
�������$��0,1,0,0q�5N     $��Stretch=�5O     $��Center=�5P     $��Center=�5Q     $��5,5,0,5q�5R     $y�	Collapsed=�5S     �� 5U     -   5        ) ��Name$) 	ListView1��5U  )   $��4��6   
������ 
������ $��Disabled=�5W     $
��Auto=�5X     $y�	Collapsed=�5Y     ��5Z     �� 5[     " ��6    * �� Triggers* 5\     P� 5]  "    �@J�IsMouseOver$
 true��6A   . �5^  &   ��  � ��
 ��iA�6C   �� 5_  &    � ��
 �����6C   5`  #   .�5b     ��  � ��
 �   �6<   �� 5c      � ��$ 0,0,0,1q�6@   �� 5d      �@�Cursor$
 Hand��67   �� 5e      � ��
 �����6;   �� 5f      � ��
 �   �6;   �� 5g      � ��$ 15(�69   5h     5j     5k     5l     �� 5n  
   -   5        + ��Name$+ MaxMin��5n     $��40��5o     $��40��5p     $��0q�5q     #��[ 5r     $��20,40,40,66q�5t     $��5��5u     $��1��5v     $��0��5w     $��2��5x     $
 Hand��5y     ��5z     �� 5{     $ /Assets/img_Min.png��6   5}     �� 5  
   -   5        $+ MaxBtn��5     $��40��5�     $��40��5�     $��0q�5�     #��[ 5�     $��20,40,40,66q�5�     $��6��5�     $��1��5�     $��0��5�     $��2��5�     $
 Hand��5�     ��5�     �� 5�     $ /Assets/img_max.png��6   5�     �� 5�  
   -   5        $+ CloseBtn��5�     $��40��5�     $��40��5�     $��0q�5�     #��[ 5�     $��20,40,40,66q�5�     $��7��5�     $��1��5�     $��0��5�     $��2��5�     $
 Hand��5�     ��5�     �� 5�     $ /Assets/img_close.png��6   5�     5�     5�     