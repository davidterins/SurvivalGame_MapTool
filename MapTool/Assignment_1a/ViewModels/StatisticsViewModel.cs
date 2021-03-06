﻿using Assignment_1a.Models;
using Assignment_1a.Models.Global;
using Assignment_1a.Services;
using Assignment_1a.ViewModels.ChartViewModels;
using Assignment_1a.ViewModels.Commands;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Assignment_1a.ViewModels
{
	class StatisticsViewModel : PageBase
	{
		List<LogFileModel> _logDataFiles;

		public StatisticsViewModel()
		{
      _selectedChartTypes = new List<string>();
      chartCollection = new ChartCollection();
			_selectedLogs = new ObservableCollection<CheckableLogFileModel>();

			chartCollection.OnItemEdit += ChartCollection_OnItemEdit;

			CreateChartCommand = new ActionCommand(CreateChart);
		}

		public LogType SelectedLogType { get; set; }

		ChartCollection chartCollection;
		public ChartCollection ChartCollection { get { return chartCollection; } }

		ObservableCollection<CheckableLogFileModel> _selectedLogs;
		public ObservableCollection<CheckableLogFileModel> SelectedLogs { get { return _selectedLogs; } set { _selectedLogs = value; OnPropertyChanged(nameof(SelectedLogs)); } }

		ChartBase _selectedChartItem;
		public ChartBase SelectedChartItem { get { return _selectedChartItem; } set { _selectedChartItem = value; OnPropertyChanged(nameof(SelectedChartItem)); } }

		bool _hasLogData;
		public bool HasLogData { get { return _hasLogData; } set { _hasLogData = value; OnPropertyChanged(nameof(HasLogData)); } }

    public string SelectedStatisticType { get; set; }

    List<string> _selectedChartTypes;
    public List<string> SelectableChartTypes { get { return _selectedChartTypes; } set { _selectedChartTypes = value; OnPropertyChanged(nameof(SelectableChartTypes)); } }

    string _selectedChartType;
		public string SelectedChartType { get { return _selectedChartType; } set { _selectedChartType = value; if (value != null) { SelectableChartTypes = ChartType.ChartTypes[value]; } OnPropertyChanged(nameof(SelectedChartType)); } }

		string _newChartTitle;
		public string NewChartTitle { get { return _newChartTitle; } set { _newChartTitle = value; OnPropertyChanged(nameof(NewChartTitle)); } }

		string _newChartSubTitle;
		public string NewChartSubTitle { get { return _newChartSubTitle; } set { _newChartSubTitle = value; OnPropertyChanged(nameof(NewChartSubTitle)); } }

		string _totalLogs = "0";
		public string TotalLogs { get { return _totalLogs; } set { _totalLogs = value; OnPropertyChanged(nameof(TotalLogs)); } }

		string _totalGamesPlayed = "0";
		public string TotalGamesPlayed { get { return _totalGamesPlayed; } set { _totalGamesPlayed = value; OnPropertyChanged(nameof(TotalGamesPlayed)); } }

		public string SelectedAllOrCustomPlayers { get; set; }

		bool _allLogSelected = true;
		public bool AllLogsSelected { get { return _allLogSelected; } set { _allLogSelected = value; } }
		int _averageGameTime = 0;
		public int AverageGameTime { get { return _averageGameTime; } set { _averageGameTime = value; OnPropertyChanged(nameof(AverageGameTime)); } }

		public ICommand CreateChartCommand { get; }

		public void SetWorkingFiles(List<LogFileModel> newLogDataFiles)
		{
			_logDataFiles = newLogDataFiles;
			TotalLogs = newLogDataFiles.Count.ToString();
			HasLogData = true;
			int totalGames = 0;
			foreach (LogFileModel logFile in newLogDataFiles)
			{
				string fileName = logFile.LogFileName;
				SelectedLogs.Add(new CheckableLogFileModel(fileName, false));
				totalGames += logFile.Log.Count;
			}
			TotalGamesPlayed = totalGames.ToString();
		}

		private void ChartCollection_OnItemEdit(object sender, ChartBase e)
		{
			NewChartTitle = e.Title;
			NewChartSubTitle = e.SubTitle;
			ChartCollection.Replace(e, new DoughnutChartViewModel(_logDataFiles));
		}

		void CreateChart()
		{
			List<LogFileModel> temp = new List<LogFileModel>();

			if (!AllLogsSelected)
				foreach (CheckableLogFileModel checkableLogFile in SelectedLogs)
				{
					if (checkableLogFile.IsChecked)
					{
						var s = _logDataFiles.Where(o => o.LogFileName == checkableLogFile.LogFileName).ToList();
						temp.Add(s[0]);
					}
				}
			else
			{
				temp = _logDataFiles;
			}

			if (SelectedChartType == ChartType.Staple)
			{
				ChartCollection.Add(new StapleChartViewModel(temp)
				{
					Title = NewChartTitle,
					SubTitle = NewChartSubTitle,
				});
			}
			else if (SelectedChartType == ChartType.Doughnut)
			{
				ChartCollection.Add(new DoughnutChartViewModel(temp)
				{
					Title = NewChartTitle,
					SubTitle = NewChartSubTitle,
				});
			}
      else if (SelectedChartType == ChartType.Line)
      {
        ChartCollection.Add(new LineChartViewModel(temp, SelectedStatisticType)
        {
          Title = NewChartTitle,
          SubTitle = NewChartSubTitle,
        });
      }

      NewChartTitle = "";
			NewChartSubTitle = "";

		}

	}
}
