using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Competitor 的摘要说明
/// </summary>
public  class Competitor
{

    public Competitor()
    {
        Open = false;
        Total = 0.0;
    }
    public  string  Name { get; set; }

    public  bool  Open { get; set; }

    public double Total { get; set; }

}


public static class CompetitorCollocation
{
    public static List<Competitor> Competitors = new List<Competitor>();
}