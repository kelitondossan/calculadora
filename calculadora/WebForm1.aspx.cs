using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculadora
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                double numero1 = Convert.ToDouble(txtNumero1.Text);
                double numero2 = Convert.ToDouble(txtNumero2.Text);

                string operacao = ddlOperacao.SelectedValue;
                double resultado = 0;

                switch (operacao)
                {
                    case "somar":
                        resultado = numero1 + numero2;
                        break;
                    case "subtrair":
                        resultado = numero1 - numero2;
                        break;
                    case "multiplicar":
                        resultado = numero1 * numero2;
                        break;
                    case "dividir":
                        if (numero2 != 0)
                            resultado = numero1 / numero2;
                        else
                            lblResultado.Text = "Erro: Divisão por zero!";
                        break;
                    default:
                        lblResultado.Text = "Operação inválida!";
                        return;
                }

                lblResultado.Text = "Resultado: " + resultado.ToString();
            }

        }

        protected void ddlOperacao_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

    }


}