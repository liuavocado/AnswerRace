using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace SignalRChar
{
    public class ChatHub : Hub
    {

        private bool isRightAns(string ans, Test thisTest)
        {
            return ans == thisTest.RightAns;
        }
        public void Send(string name,string id, string message)
        {


            var textViewModles = TitleCollocation.MyTestViewModles.Find(t => t.MyTest.TestID == int.Parse(id));
            var compitor = CompetitorCollocation.Competitors.Find(c => c.Name == name);

            var timespanStr = DateTime.Now.Subtract(textViewModles.sendTime).TotalSeconds.ToString();

            if (textViewModles.Answred)
            {
                if (isRightAns(message, textViewModles.MyTest))
                {
                    message += "<span style=\"color:green\"> 回答正确 </span>";
                }
            }
            else
            {
                if (isRightAns(message, textViewModles.MyTest))
                {
                    textViewModles.Answred = true;
                    message += "<span style=\"color:green\"> 回答正确 第一个回答</span>";
                    compitor.Total += 20.0;
                }
            }
            message += "用时 <span style=\"color:red\">"+ timespanStr +" </span> ";

            Clients.All.broadcastMessage(name, message);
            
        }

        public void UpdateTitle(string message)
        {
            Clients.All.UpdateTitle(message);
        }


    }
//
//    public class TitleHub : Hub
//    {
//        public void Send(string message)
//        {
//            Clients.All.UpdateTitle(message);
//        }
//    }
}