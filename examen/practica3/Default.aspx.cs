using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;
using System.Globalization;
using System.Data.EntityClient;
using System.Data.SqlClient;
using System.Data.Common;

namespace practica3
{
    public partial class _Default : Page
    {
        pubsEntities context = new pubsEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var query = from a in context.authors
                        select a;

            gridView.DataSource = query.ToList();
            gridView.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var query = from a in context.titles
                        select a;

            gridView.DataSource = query.ToList();
            gridView.DataBind();    
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var query = from a in context.authors orderby a.au_fname
                        where a.city == "Oakland"
                        select  a ;
            
            gridView.DataSource = query.ToList();
            gridView.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var query = from a in context.titles
                        where a.price >= 10 && a.price <= 20
                        select a;

            gridView.DataSource = query.ToList();
            gridView.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var query = (from a in context.titles
                        orderby a.ytd_sales descending
                        select a).Take(1);
                        
          //  Response.Write("<script>alert('" + query.Last().ToString() + "')</script>");
            
            gridView.DataSource = query.ToList();
            gridView.DataBind();


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String txt = texto.Text;

            var query = from a in context.titles
                        where a.title == txt
                        select a;

            gridView.DataSource = query.ToList();
            gridView.DataBind();

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String txt = texto.Text;

            var query = from at in context.titleauthor
                        where at.authors.au_fname == txt 
                        select new {
                            autor = at.authors.au_fname,
                            ciudad = at.authors.city,
                            titulo = at.titles.title,
                            precio = at.titles.price,
                            tipo = at.titles.type
                        };
            
            gridView.DataSource = query.ToList();
            gridView.DataBind();
        }
    }
}