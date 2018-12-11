using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMI_homework
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Visible = false;
        }

        protected void btnResult_Click(object sender, EventArgs e)
        {
            double height = 0;
            double weight = 0;
            int BMI = 0;

            
            double.TryParse(tbHeight.Text, out height);
            double.TryParse(tbWeight.Text, out weight);
            height /= 100;
            BMI = (int)(weight / (height * height));

            if (BMI > 25)
            {
                lbl1.Text = "BMI:"+BMI.ToString()+"<br/>過重，該減肥囉!!";
                lbl1.Attributes["style"] = "color:red";
            }
            else if (BMI < 20)
            {
                lbl1.Text = "BMI:" + BMI.ToString() + "<br/>過輕，多吃點!!";
                lbl1.Attributes["style"] = "color:yellow";
            }
            else
            {
                lbl1.Text = "BMI:" + BMI.ToString() + "<br/>恭喜你，很正常，請保持!!";
                lbl1.Attributes["style"] = "color:green";
            }
            lbl1.Visible = true;

        }
    }
}