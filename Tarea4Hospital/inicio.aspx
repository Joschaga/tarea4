<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Tarea4Hospital.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página de Inicio</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            margin-bottom: 0px;
        }
        .auto-style4 {
            border: 3px outset #006699;
            padding: 1px 4px;
            width: 471px;
            text-align: left;
        }
        .auto-style5 {
            border-style: outset;
            border-color: #006699;
            padding: 0;
            width: 726px;
        }
        .auto-style6 {
            text-decoration: underline;
        }
        .auto-style7 {
            color: #006699;
            font-family: Castellar;
        }
        .auto-style8 {
            border-style: outset;
            border-color: #006699;
            padding: 0;
        }
        .auto-style9 {
            border-style: outset;
            border-color: #006699;
        }
        .auto-style10 {
            border: 3px outset #006699;
            padding: 1px 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="font-size: xx-large; text-align: center" class="auto-style10">
                        <asp:Image ID="Image2" runat="server" Height="169px" ImageUrl="~/Imagenes/pngtree-blue-medical-safety-health-banner-picture-image_1008433.jpg" Width="665px" />
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        <span class="auto-style7"><strong>FORMULARIO PACIENTES</strong></span><br class="auto-style10" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <span class="auto-style6"><strong>FORMULARIO</strong></span><br class="auto-style10" />
                        <br class="auto-style10" />
                        CÉDULA:<br class="auto-style10" />
                        <asp:TextBox ID="Tcedula" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        NOMBRE:<br class="auto-style10" />
                        <asp:TextBox ID="Tnombre" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        APELLIDO:<br class="auto-style10" />
                        <asp:TextBox ID="Tapellido" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        EDAD:<br class="auto-style10" />
                        <asp:TextBox ID="Tedad" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        TELÉFONO:<br class="auto-style10" />
                        <asp:TextBox ID="Ttelefono" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        DIRECCIÓN:<br class="auto-style10" />
                        <asp:TextBox ID="Tdomicilio" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        GÉNERO:<br class="auto-style10" />
                        <asp:RadioButton ID="Rmasculino" runat="server" Text="Masculino" GroupName="radio" />
                        <asp:RadioButton ID="Rfemenino" runat="server" Text="Femenino" GroupName="radio" />
                        <br class="auto-style10" />
                        <br class="auto-style10" />
                        ¿PACIENTE CUENTA CON SEGURO?<br class="auto-style10" />
                        <asp:RadioButton ID="Rsi" runat="server" Text="Sí" GroupName="radio2" />
                        <asp:RadioButton ID="Rno" runat="server" Text="No" GroupName="radio2" />
                        <br class="auto-style10" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <br class="auto-style10" />
                        <asp:Button ID="Bguardar" runat="server" Text="Guardar" OnClick="Bguardar_Click" CssClass="auto-style3" Height="43px" Width="104px" />
                        <br class="auto-style10" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="128px" ImageUrl="~/Imagenes/doctor-writing-D3K6QME-e1569240055195.jpg" Width="246px" />
                        <br class="auto-style10" />
                    </td>
                    <td class="auto-style5">
                        <br class="auto-style9" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image4" runat="server" Height="133px" ImageUrl="~/Imagenes/12b.jpg" Width="290px" />
                        <span class="auto-style6"><strong>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        PORCENTAJE PACIENTES</strong></span><br class="auto-style9" />
                        <br class="auto-style9" />
                        NIÑOS MENORES DE 13 AÑOS:<br class="auto-style9" />
                        <asp:Label ID="Lnino" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        JÓVENES ENTRE 14 Y 30 AÑOS:<br class="auto-style9" />
                        <asp:Label ID="Ljoven" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        ADULTOS MAYORES DE 31 AÑOS:<br class="auto-style9" />
                        <asp:Label ID="Ladulto" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        <span class="auto-style6"><strong>PORCENTAJE HOMBRES VS MUJERES<br class="auto-style9" />
                        </strong></span>
                        <br class="auto-style9" />
                        <asp:Label ID="Lhm" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        <span class="auto-style6"><strong>PORCENTAJE PACIENTES CON O SIN SEGURO<br class="auto-style9" />
                        <br class="auto-style9" />
                        </strong>
                        <asp:Label ID="Lseguro" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        </span>
                        <br class="auto-style9" />
                        <asp:Button ID="Bpromedio" runat="server" Height="43px" OnClick="Bpromedio_Click" Text="Promedios" Width="104px" />
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        <span class="auto-style6"><strong>BÚSQUEDA DE PACIENTE<br class="auto-style9" />
                        <br class="auto-style9" />
                        </strong></span>NOMBRE:<br class="auto-style9" />
                        <asp:TextBox ID="Tbusqueda" runat="server" Width="300px"></asp:TextBox>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        <asp:Label ID="Lbusqueda" runat="server"></asp:Label>
                        <br class="auto-style9" />
                        <br class="auto-style9" />
                        <asp:Button ID="Bbuscar" runat="server" Height="43px" OnClick="Bbuscar_Click" Text="Buscar" Width="104px" />
                        <br class="auto-style9" />
                    </td>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" Height="124px" ImageUrl="~/Imagenes/1282799.jpg" Width="297px" />
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
