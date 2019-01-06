using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// MockTestDate 的摘要说明
/// </summary>
public class MockTestDate
{
	public MockTestDate()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//

        MyTests = new List<Test>(){
            new Test{
                TestID = 1,
                TestAns1 = "你是猪",
                TestAns2 = "你是企鹅",
                TestAns3 = "你是狗狗",
                TestTitle = "你是什么?",
                RightAns = "你是猪",
                

            },
            new Test{
                TestID = 2,
                TestAns1 = "我是神",
                TestAns2 = "我是天使",
                TestAns3 = "我是大神",
                TestTitle = "我是什么?",
                RightAns = "我是大神",
            },
        };
	}

    public List<Test> MyTests { get; set; }

}