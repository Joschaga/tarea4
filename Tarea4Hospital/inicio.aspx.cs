using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Tarea4Hospital
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void Bguardar_Click(object sender, EventArgs e)
        {
            Paciente.Cedula = Tcedula.Text;
            Paciente.Nombre = Tnombre.Text;
            Paciente.Apellido = Tapellido.Text;
            Paciente.Edad = int.Parse(Tedad.Text);
            Paciente.Telefono = Ttelefono.Text;
            Paciente.Domicilio = Tdomicilio.Text;

            if (Rmasculino.Checked)
                Paciente.Genero = "M";
            else
                Paciente.Genero = "F";

            if (Rsi.Checked)
                Paciente.Seguro = "1";
            else
                Paciente.Seguro = "0";

            Salvar();
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["PacientesConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select * from DatosPacientes"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void Salvar()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["PacientesConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" insert into DatosPacientes(Cedula, Nombre, Apellido, Edad, Telefono, Domicilio, Genero, Seguro) " +
                                                    "values('" + Paciente.Cedula + "', '" + Paciente.Nombre + "', '" + Paciente.Apellido + "', " +
                                                    "'" + Paciente.Edad + "', '" + Paciente.Telefono + "','" + Paciente.Domicilio + "','" + Paciente.Genero + "'," +
                                                    "'" + Paciente.Seguro + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            { }

            LlenarGrid();
        }

        protected void PromEdad()
        {
            float nino = 0, joven = 0, adulto = 0;
            float conta = 0;
            foreach (GridViewRow item in GridView1.Rows)
            {
                if (int.Parse(item.Cells[3].Text) <= 13)
                    nino++;
                else if (int.Parse(item.Cells[3].Text) >= 14 && int.Parse(item.Cells[3].Text) <= 30)
                    joven++;
                else if (int.Parse(item.Cells[3].Text) > 30)
                    adulto++;

                conta++;
            }

            Lnino.Text = "Total Menores 13 es: " + ((nino).ToString() + " - Promedio Menores 13: " + ((nino / conta) * 100).ToString() + "%");
            Ljoven.Text = "Total entre 14 y 30 es: " + ((joven).ToString() + " - Promedio entre 14 y 30: " + ((joven / conta) * 100).ToString() + "%");
            Ladulto.Text = "Total Mayores 31 es: " + ((adulto).ToString() + " - Promedio Mayores 31: " + ((adulto / conta) * 100).ToString() + "%");
        }

        protected void PromGenero()
        {
            float hombres = 0, mujeres = 0;
            float contaHM = 0;
            foreach (GridViewRow item in GridView1.Rows)
            {
                if (item.Cells[6].Text == "M")
                    hombres++;
                else
                    mujeres++;

                contaHM++;
            }

            Lhm.Text = "El Porcentaje de Hombres es: " + ((((hombres / contaHM) * 100).ToString() + "%" + " - El Porcentaje de Mujeres es: " + (((mujeres / contaHM) * 100).ToString() + "%")));
        }

        protected void PromSeguro()
        {
            float cseguro = 0, sseguro = 0;
            float contaS = 0;
            foreach (GridViewRow item in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)item.Cells[7].Controls[0];
                if (chk.Checked)
                    cseguro++;
                else
                    sseguro++;

                contaS++;
            }

            Lseguro.Text = "El Porcentaje de Pacientes con Seguro es: " + ((((cseguro / contaS) * 100).ToString() + "%" + " - El Porcentaje de Pacientes sin Seguro es: " + (((sseguro / contaS) * 100).ToString() + "%")));
        }

        protected void Buscar()
        {            
            foreach (GridViewRow item in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)item.Cells[7].Controls[0];
                if (item.Cells[1].Text == Tbusqueda.Text)
                    Lbusqueda.Text = "El Paciente que usted buscó es: Cédula " + item.Cells[0].Text + "- Nombre " + item.Cells[1].Text + "- Apellido " + item.Cells[2].Text +
                                     "- Edad " + item.Cells[3].Text + "- Teléfono " + item.Cells[4].Text + "- Domicilio " + item.Cells[5].Text + "- Genero " + item.Cells[6].Text + "- Seguro " + chk.Checked.ToString() ;
            }
         }

protected void Bpromedio_Click(object sender, EventArgs e)
        {
            PromEdad();
            PromGenero();
            PromSeguro();
        }

        protected void Bbuscar_Click(object sender, EventArgs e)
        {
            Buscar();
        }
    }
}