﻿using System.Collections;
using System.Collections.Generic;
using System;

[Serializable]
public class LogStatus
{
  //int CheckPoint =
  public int CheckPoint { get; set; }
  public LogType LogType { get; set; }
  public int TimeStampInterval { get; set; }  //logStatus number * 3, logged every 3rd minute;
  public string TimeString { get; set; }
  public int Steel { get; set; }
  public int Oil { get; set; }
  public int Wood { get; set; }
  public int Water { get; set; }
  public int Population { get; set; }
  public int CleanFood { get; set; }
  public int Food { get; set; }
  public int CleanWater { get; set; }

  public LogStatus() { }

  //public LogStatus(LogType logType, string time, int steel, int oil, int wood, int water, int population)
  //{
  //  LogType = logType;
  //  TimeString = time;
  //  Steel = steel;
  //  Oil = oil;
  //  Wood = wood;
  //  Water = water;
  //  Population = population;
  //}
}

public enum LogType { EndGame, Regular, StageChange }
