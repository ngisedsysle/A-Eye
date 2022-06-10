using System;
using TechTalk.SpecFlow;

namespace SpecFlowProject1.StepDefinitions
{
    [Binding]
    public class A_EyeStepDefinitions
    {
        public void init()
        {
            Thread main = new Thread(AEye.Program.Main);
            Thread.Sleep(3000);
        }

        [Given(@"the ip is ""([^""]*)""")]
        public void GivenTheIpIs(string p0)
        {
            init();
            AEye.Program.controller.set_ip_tb(p0);
        }

        [When(@"I click on ""([^""]*)""")]
        public void WhenIClickOn(string p0)
        {
            throw new PendingStepException();
        }

        [Then(@"I must receive ""([^""]*)""")]
        public void ThenIMustReceive(string p0)
        {
            throw new PendingStepException();
        }

        [Given(@"the selected mode is ""([^""]*)""")]
        public void GivenTheSelectedModeIs(string p0)
        {
            throw new PendingStepException();
        }

        [Then(@"the system is in ""([^""]*)""")]
        public void ThenTheSystemIsIn(string p0)
        {
            throw new PendingStepException();
        }

        [Then(@"I must receive a picture")]
        public void ThenIMustReceiveAPicture()
        {
            throw new PendingStepException();
        }
    }
}
