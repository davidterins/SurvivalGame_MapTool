   M S B A M L   `   `   `  ���� E  AOilLogTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:Assignment_1a.ViewModels.ChartViewModels(Assignment_1a.ViewModels.ChartViewModels  ;"clr-namespace:Assignment_1a.ModelsAssignment_1a.Models  I)clr-namespace:Assignment_1a.Models.GlobalAssignment_1a.Models.Global  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart (    "Assignment_1a.Views.StatisticsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     JchartVM6clr-namespace:Assignment_1a.ViewModels.ChartViewModels     5models"clr-namespace:Assignment_1a.Models     =statics)clr-namespace:Assignment_1a.Models.Global     V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  >lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  e
metroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart  ���	#FFBDBDBDy��� *ShowOrCollapse+  �� UpdateSourceTrigger$  PropertyChanged=�.���  � ColumnDefinitions �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $��* �.+���  �� Orientation$ 
Horizontal=�$��0��$��10q�$��0�����	#FF807F7F.+�#  MaterialDesignThemes.Wpf.Card  $	��180��$��Center=����	#FF929292$��10q�
�������.���� ���	#FF1B6A7C.+��� $��10q�$��General info��$
��Bold"�
�������$��16(��� ���	#FF0B282E.+��� $��10q�$��	Timespan:��$
��Bold"�$��12(��� $��10q�$
��Bold"�$��12(����� *	TotalLogs+ �� StringFormat$ Total logs: {0}��$  PropertyChanged=��� $��10q�$
��Bold"�$��12(����� *TotalGamesPlayed+$ Total games played: {0}��$  PropertyChanged=��� $��10q�$��1��$��0�����	#FF807F7F.+�  
����������	#FF929292$
��Auto��$��10q�.���� ���	#FF1B6A7C.+��� $��Center=�$��10q�$��Add StatChart��$
��Bold"�
�������$��16(�]� ���	#FF0B282E.+��� $��10q�.+��� $ 
Horizontal=�.+��� $��80��$��0,0,15,0q�$��Center=�$��
Chart type���� $	��110��+   %Assignment_1a.Models.Global.ChartType   TypeList#��Z  �� SelectedItem �� *SelectedChartType+ �� Mode$ OneWayToSource=�$  PropertyChanged=��� $ 
Horizontal=�.+��� $��80��$��0,0,15,0q�$��Center=�$��Chart Title���� $	��110������ *NewChartTitle+$ TwoWay=�$  PropertyChanged=� �� FallbackValue$ no title...���� $ 
Horizontal=�.+��� $��80��$��0,0,15,0q�$��Center=�$��Chart Subtitle���� $	��110������ *NewChartSubTitle+$ TwoWay=�$  PropertyChanged=�$ no subtitle...���� $��10q�.+��� $ 
Horizontal=�.+��� $��80��$��All logs���� -   $��IncludeAllCB��	 d� 	IsChecked	 �� *AllLogsSelected+$ TwoWay=��� $ 
Horizontal=�.+��� $��80��$��0,0,5,0q�$��Center=�$��Selected logs���� $	��110������ *SelectedLogs+$ TwoWay=�$  PropertyChanged=����� 
 �� 
TargetType"
 ��   MaterialDesignComboBox �� BasedOn# [  .���  �� Property � {� �� Value .   �� Triggers ��  �� Binding ��  �� ElementName$ IncludeAllCB�� �� Path$ 	IsChecked� �� Value	 False.a���  � {� . ����  �� DataType0   *Assignment_1a.Models.CheckableLogFileModel"  .R��� $ 
Horizontal=�.+��� 	 �� *	IsChecked+$ TwoWay=�$  PropertyChanged=��� 
����������� *LogFileName+�� $ 
Horizontal=�.+��� $��80��$��Result type���� $	��110������ *SelectableChartTypes+$  PropertyChanged=� �� *SelectedStatisticType+$ TwoWay=��� $��Center=�$
��Left=����	#FF1B6A7C$��Center=�$��40��$	��100��$��10q�$��	20,0,30,0q�$��	Get stats��{��� *
HasLogData+��Z� ���� *CreateChartCommand+�� $��0��$��2��$��1��$��2��$��Hidden=�.���� $��1��$��0��$��2��$
��Left=����� *ChartCollection+ �� *SelectedChartItem+$ TwoWay=�$  PropertyChanged=����� .R��  K� IsItemsHost .  � 	Resources A   ;Assignment_1a.ViewModels.ChartViewModels.LineChartViewModel � ContextMenu � ShowGridLines J� IsHitTestVisible �� SelectedValue'  !MaterialDesignThemes.Wpf.PackIcon�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=null]]   Kind#  LiveCharts.Wpf.CartesianChart&   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation   Series   AxisY	  LiveCharts.Wpf.Axis 	  Title 	  Labels    AxisX! � ToolTipC
   =Assignment_1a.ViewModels.ChartViewModels.StapleChartViewModel9  3De.TorstenMandelkow.MetroChart.ClusteredColumnChart.  (De.TorstenMandelkow.MetroChart.ChartBase"   
ChartTitle#   ChartSubTitle$   Series0  *De.TorstenMandelkow.MetroChart.ChartSeries%   DisplayMember&   SeriesTitle'   ValueMemberE   ?Assignment_1a.ViewModels.ChartViewModels.DoughnutChartViewModel2  ,De.TorstenMandelkow.MetroChart.DoughnutChart��%�
  (��       *, +)(�� :    *,
 +)(�� �    *, +)�� "  .R�  $��10q�$
��1000��$	��400��$
��1000��$	��Top=� �� ���� .R�  ���	#FF1B6A7C.��  $	��200��$��5q����	#CC000000.��� $��15q� .  �� $
��Auto ��� $
��Auto �.+��� $��0��.+��� $��	Based on:����  .  ���� **(EditInfoViewModel.ContainingLogFileNames+�� $	��300��$��10,0,0,0q�$��1��.+��� $��At Checkpoint���� ���� *$"EditInfoViewModel.TotalCheckPoints+ �� *&$EditInfoViewModel.SelectedCheckPoint+$ TwoWay=�$  PropertyChanged=��� $��Bottom=�$��Apply��$��10q����	#FF4CB04C��Z� ���� *'%EditInfoViewModel.ApplyChangesCommand+.��]� .+��� $	��Top=�$ 
Horizontal=�.+��� $��5q�$��30��$��50��
��� � ���Z� ���� *EditCommand+.��  $ 	TableEdit=��� $��5q�$��30��$��50��
���  ����Z� ���� *DeleteCommand+.��  $ Delete=�� .+�  
���   �$ Right=� �� *SeriesCollection+ 	   �� *YTitle+ �� *ResourceStamps+  	   �� *XTitle+ �� *
TimeStamps+! _� 
���   ��� " 
 .R�  $��10q�$	��400��$	��400��$	��600��$	��Top=� �� ���� .R�  ���	#FF1B6A7C.��  $	��200��$��5q����	#CC000000.��� $��15q� .  �� $
��Auto ��� $
��Auto �.+��� $��0��.+��� $��	Based on:����  .  ���� **(EditInfoViewModel.ContainingLogFileNames+�� $	��300��$��10,0,0,0q�$��1��.+��� $��At Checkpoint���� ���� *$"EditInfoViewModel.TotalCheckPoints+ �� *&$EditInfoViewModel.SelectedCheckPoint+$ TwoWay=�$  PropertyChanged=��� $��Bottom=�$��Apply��$��10q����	#FF4CB04C��Z� ���� *'%EditInfoViewModel.ApplyChangesCommand+.��]� .+��� $	��Top=�$ 
Horizontal=�.+��� $��5q�$��30��$��50��
���  ����Z� ���� *DeleteCommand+.��  $ Delete=��� $��5q�$ 
Horizontal=�$��30��.+��� 
�������$��12(�$��At Checkpoint���� 
�������$��12(����� *&$EditInfoViewModel.SelectedCheckPoint+$  PropertyChanged=�  $	��Top=�
���������Z� " �� *Title+# �� *
SubTitle+$   $% Title��$& Title��$' Value������ *ChartDataModelCollection+$  PropertyChanged=��� "  .R�  $��10q�$	��400��$	��400��$	��600��$	��Top=�.��]� .+��� $	��Top=�$ 
Horizontal=�.+��� $��5q�$��30��$��50��
��� � ���Z� ���� *EditCommand+.��  $ 	TableEdit=��� $��5q�$��30��$��50��
���  ����Z� ���� *DeleteCommand+.��  $ Delete=�  
���������Z� " �� *Title+# �� *
SubTitle+$   $% Title��$& Title��$' Value������ *ChartDataModelCollection+$  PropertyChanged=�