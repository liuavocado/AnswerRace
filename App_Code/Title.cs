using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using Microsoft.AspNet.SignalR;
using Newtonsoft.Json;
using SignalRChar;


/// <summary>
/// Title 的摘要说明
/// </summary>
public static class TitleCollocation
{

//    public string Name { get; set; }
//
//    public List<string> AnswerList  { get; set; }


    public static List<TestViewModle> MyTestViewModles = new List<TestViewModle>();

    private static Timer timer;

    private static IHubContext _hubContext;
    public static void StartSend()
    {
       

        _hubContext = GlobalHost.ConnectionManager.GetHubContext<ChatHub>();

        timer = new Timer(MyTimerCallback, null, 6000,20000);
    }

    private static void MyTimerCallback(object obj)
    {
        var test = MyTestViewModles.Find(t => !t.Send);
        if (test != null)
        {
            string result = JsonConvert.SerializeObject(test.MyTest);
            _hubContext.Clients.All.UpdateTitle(result);
            test.Send = true;
            test.sendTime = DateTime.Now;
        }
        else
        {
            _hubContext.Clients.All.UpdateTitle("1");
        }
    }


}


public class TestViewModle
{
    public Test MyTest { get; set; }
    public bool Send { get; set; }

    public DateTime sendTime;
    public bool Answred { get; set; }

    public TestViewModle()
    {
        Send = false;
        Answred = false;
    }
}