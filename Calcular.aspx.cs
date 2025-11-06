using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bhaskara
{
    public partial class Calcular : System.Web.UI.Page
    {
        // Controls declared as protected fields so the runtime can bind them
        protected Label lblResultado;
        protected TextBox TxtA;
        protected TextBox TxtB;
        protected TextBox TxtC;

        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                double a = double.Parse(TxtA.Text);
                double b = double.Parse(TxtB.Text);
                double c = double.Parse(TxtC.Text);

                double delta = (b * b) - (4 * a * c);

                if (delta < 0)
                {
                    lblResultado.Text = "Não existem raízes reais.";
                }
                else
                {
                    double x1 = (-b + Math.Sqrt(delta)) / (2 * a);
                    double x2 = (-b - Math.Sqrt(delta)) / (2 * a);

                    lblResultado.Text = $"x1 = {x1:F2} e x2 = {x2:F2}";
                }
            }
            catch
            {
                lblResultado.Text = "Erro: insira números válidos!";
            }
        }
    }
}