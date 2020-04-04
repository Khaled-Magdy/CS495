<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        
       //CREAT CONNECTION OBJECT
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        
        //Creat INSERT Statment
        String strInsert = "INSERT INTO [dbo].[Table]" +
            "VALUES('" + txtfName.Text + "', '"
            + txtLname.Text + "', '"
            + txtId.Text + "', '"
            + txtGender.SelectedValue + "', '"
            + txtCalender.SelectedDate + "', '"
            + txtEmail.Text + "', '"
            + txtPhone.Text + "', '"
            + txtAddress.Text+ "', '"
            + txtNationality.Text + "', '"
            + txtFaculity.SelectedItem + "', '"
            +txtBuss.SelectedValue+ "')";
        
        //Creat Sql COmmand
        SqlCommand cmdInsert = new SqlCommand(strInsert,conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            lbl.Text = "Welcome " + txtfName + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                lbl.Text = "ID already exists, Please Choose Another!!";
            else
                lbl.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            lbl.Text = "Sorry, System Error, You may Try later!!";
        }
           

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 543px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 189px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#0033CC" Text="New Student"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label15" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="txtGender" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Birth Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Calendar ID="txtCalender" runat="server" Height="157px" Width="147px"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="Phone number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label11" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label12" runat="server" Text="Faculty:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="txtFaculity" runat="server">
                        <asp:ListItem Value="C">CS</asp:ListItem>
                        <asp:ListItem Value="I">IS</asp:ListItem>
                        <asp:ListItem Value="D">DM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label13" runat="server" Text="Bus:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="txtBuss" runat="server">
                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                        <asp:ListItem Value="N">No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
