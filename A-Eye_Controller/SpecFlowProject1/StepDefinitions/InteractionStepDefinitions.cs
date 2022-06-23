using System;
using System.Text.RegularExpressions;
using TechTalk.SpecFlow;

namespace SpecFlowProject1.StepDefinitions
{
    [Binding]
    public class InteractionStepDefinitions
    {
       


        [Given(@"the app is connected")]
        public void GivenTheAppIsConnected()
        {
            AEye.Program.controller.Ip_btn_Click(new object(), new EventArgs());
            Thread.Sleep(2000);
        }

        [Given(@"the selected mode is ""([^""]*)""")]
        public void GivenTheSelectedModeIs(string p0)
        {
            if (p0.Equals("mode auto"))
            {
                AEye.Program.controller.SetMode(0);
            }
            else if (p0.Equals("mode manual"))
            {
                AEye.Program.controller.SetMode(1);
            }
            else if (p0.Equals("mode video"))
            {
                AEye.Program.controller.SetMode(2);
            }
            else
            {
                throw new PendingStepException();
            }
        }

        private bool logContainStr(string subStr)
        {
            string log = AEye.Program.log.ToLower();
            return log.Contains(subStr.ToLower());
        }


        [Then(@"the system is in ""([^""]*)""")]
        public void ThenTheSystemIsIn(string p0)
        {
            if (p0.Equals("mode auto"))
            {
                logContainStr("Process IA running").Should().BeTrue();
            }
            else if (p0.Equals("mode manual"))
            {
                logContainStr("Mode capture manuelle").Should().BeTrue();
            }
            else if (p0.Equals("mode video"))
            {
                logContainStr("Mode video").Should().BeTrue();
            }
            else
            {
                throw new PendingStepException();
            }
        }

        [Given(@"the current mode is ""([^""]*)""")]
        public void GivenTheCurrentModeIs(string p0)
        {
            if (p0.Equals("mode manual"))
            {
                GivenTheSelectedModeIs(p0);
                AEye.Program.controller.SetConfig_Click(new object(), new EventArgs());
                Thread.Sleep(2000);
            }
            else
            {
                throw new PendingStepException();
            }
        }

        [Then(@"I must receive a picture")]
        public void ThenIMustReceiveAPicture()
        {
            logContainStr("Get New Image").Should().BeTrue();
        }
    }
}
