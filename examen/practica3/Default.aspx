<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="practica3._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Latest compiled and minified CSS -->
<link href="Content/custom-style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
  <div class="container">
      
        <div class ="alert alert-success">
            <center><h1>Ejercicios propuestos para el Lab 10 de C#</h1></center> 
        </div>
        <div class="row" style="width:500px; height:auto; margin:auto;">
            <center>
             <asp:TextBox cssClass="form-control" ID="texto" runat="server"></asp:TextBox>
            </center>
        </div>
    <br /> <br />
        <div class="row" style="width:500px; height:auto; margin:auto;">
            <div class="col-md-6">
              <ul>
               <li> 
                   <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Ejercicio 01" OnClick="Button1_Click" />
               </li><br />
                 <li> 
                   <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Ejercicio 02" OnClick="Button2_Click" />
               </li><br />
                  <li> 
                   <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Text="Ejercicio 03" OnClick="Button3_Click" />
               </li><br />
                  <li> 
                   <asp:Button ID="Button4" CssClass="btn btn-warning" runat="server" Text="Ejercicio 04" OnClick="Button4_Click" />
               </li><br />
                  <li> 
                   <asp:Button ID="Button5" CssClass="btn btn-success" runat="server" Text="Ejercicio 05" OnClick="Button5_Click" />
               </li>
             </ul>
            </div>
            <div class="col-md-6">
               <ul>
               <li> 
                   <asp:Button ID="Button6" CssClass="btn btn-warning" runat="server" Text="Ejercicio 06" OnClick="Button6_Click"/>
               </li><br />
                 <li> 
                   <asp:Button ID="Button7" CssClass="btn btn-success" runat="server" Text="Ejercicio 07" OnClick="Button7_Click" />
               </li>
                 
             </ul>
            </div>

        </div>
    
        <div id="container_main" class="row custom" style="width:100%; height:auto; margin:auto;">
            <div class="col-md-12">
                <h2 id="message">Descripción del ejercicio</h2>
                <asp:GridView ID="gridView" runat="server">
                </asp:GridView>
            </div>
        </div>
  </div>

</asp:Content>
