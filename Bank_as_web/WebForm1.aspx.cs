using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_as_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        enum State
        {
            Insert,
            Update,
            Select,
            Delete
        };
        private static State st = State.Select;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button10.Enabled = false;
            Button11.Enabled = false;
            Button12.Enabled = false;
            Button13.Enabled = false;
            Button14.Enabled = false;
            Button15.Enabled = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int si = GridView1.SelectedIndex;
            if (si < 0) return;
            TextBox1.Text = GridView1.Rows[si].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[si].Cells[2].Text;
            TextBox3.Text = GridView1.Rows[si].Cells[3].Text;
            TextBox4.Text = GridView1.Rows[si].Cells[4].Text;
            TextBox5.Text = GridView1.Rows[si].Cells[5].Text;
            this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int si = GridView2.SelectedIndex;
            if (si < 0) return;
            TextBox6.Text = GridView2.Rows[si].Cells[1].Text;
            TextBox7.Text = GridView2.Rows[si].Cells[3].Text;
            TextBox8.Text = GridView2.Rows[si].Cells[4].Text;
            TextBox9.Text = GridView2.Rows[si].Cells[5].Text;
            TextBox10.Text = GridView2.Rows[si].Cells[6].Text;
            this.SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int si = GridView3.SelectedIndex;
            if (si < 0) return;
            TextBox11.Text = GridView3.Rows[si].Cells[1].Text;
            TextBox12.Text = GridView3.Rows[si].Cells[3].Text;
            TextBox13.Text = GridView3.Rows[si].Cells[4].Text;
            TextBox14.Text = GridView3.Rows[si].Cells[5].Text;
            TextBox15.Text = GridView3.Rows[si].Cells[6].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            st = State.Insert;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Button10.Enabled = true;
            Button11.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int si = GridView1.SelectedIndex;
            if (si < 0) return;
            st = State.Update;
            TextBox1.Text = GridView1.Rows[si].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[si].Cells[2].Text;
            TextBox3.Text = GridView1.Rows[si].Cells[3].Text;
            TextBox4.Text = GridView1.Rows[si].Cells[4].Text;
            TextBox5.Text = GridView1.Rows[si].Cells[5].Text;
            Button10.Enabled = true;
            Button11.Enabled = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            st = State.Insert;
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            Button12.Enabled = true;
            Button13.Enabled = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int si = GridView2.SelectedIndex;
            if (si < 0) return;
            st = State.Update;
            TextBox6.Text = GridView2.Rows[si].Cells[1].Text;
            TextBox7.Text = GridView2.Rows[si].Cells[3].Text;
            TextBox8.Text = GridView2.Rows[si].Cells[4].Text;
            TextBox9.Text = GridView2.Rows[si].Cells[5].Text;
            TextBox10.Text = GridView2.Rows[si].Cells[6].Text;
            Button12.Enabled = true;
            Button13.Enabled = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            st = State.Insert;
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            Button14.Enabled = true;
            Button15.Enabled = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            int si = GridView3.SelectedIndex;
            if (si < 0) return;
            st = State.Update;
            TextBox11.Text = GridView3.Rows[si].Cells[1].Text;
            TextBox12.Text = GridView3.Rows[si].Cells[3].Text;
            TextBox13.Text = GridView3.Rows[si].Cells[4].Text;
            TextBox14.Text = GridView3.Rows[si].Cells[5].Text;
            TextBox15.Text = GridView3.Rows[si].Cells[6].Text;
            Calendar2.SelectedDate = Convert.ToDateTime(TextBox12.Text);
            Button14.Enabled = true;
            Button15.Enabled = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int si = GridView1.SelectedIndex;
            if (si < 0) return;
            TextBox1.Text = GridView1.Rows[si].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[si].Cells[2].Text;
            TextBox3.Text = GridView1.Rows[si].Cells[3].Text;
            TextBox4.Text = GridView1.Rows[si].Cells[4].Text;
            TextBox5.Text = GridView1.Rows[si].Cells[5].Text;
            st = State.Delete;
            Button10.Enabled = true;
            Button11.Enabled = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int si = GridView2.SelectedIndex;
            if (si < 0) return;
            TextBox6.Text = GridView2.Rows[si].Cells[1].Text;
            TextBox7.Text = GridView2.Rows[si].Cells[3].Text;
            TextBox8.Text = GridView2.Rows[si].Cells[4].Text;
            TextBox9.Text = GridView2.Rows[si].Cells[5].Text;
            TextBox10.Text = GridView2.Rows[si].Cells[6].Text;
            Calendar1.SelectedDate = Convert.ToDateTime(TextBox10.Text);
            //SqlDataSource2.Delete();
            st = State.Delete;
            Button12.Enabled = true;
            Button13.Enabled = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            int si = GridView3.SelectedIndex;
            if (si < 0) return;
            TextBox11.Text = GridView3.Rows[si].Cells[1].Text;
            TextBox12.Text = GridView3.Rows[si].Cells[3].Text;
            TextBox13.Text = GridView3.Rows[si].Cells[4].Text;
            TextBox14.Text = GridView3.Rows[si].Cells[5].Text;
            TextBox15.Text = GridView3.Rows[si].Cells[6].Text;
            //SqlDataSource3.Delete();
            st = State.Delete;
            Button14.Enabled = true;
            Button15.Enabled = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (st == State.Insert) SqlDataSource1.Insert();
            if (st == State.Update) SqlDataSource1.Update();
            if (st == State.Delete)  SqlDataSource1.Delete();
            st = State.Select;
            Button10.Enabled = false;
            Button11.Enabled = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            st = State.Select;
            Button10.Enabled = false;
            Button11.Enabled = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            st = State.Select;
            Button12.Enabled = false;
            Button13.Enabled = false;
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            st = State.Select;
            Button14.Enabled = false;
            Button15.Enabled = false;
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (st == State.Insert) SqlDataSource2.Insert();
            if (st == State.Update) SqlDataSource2.Update();
            if (st == State.Delete) SqlDataSource2.Delete();
            st = State.Select;
            Button12.Enabled = false;
            Button13.Enabled = false;
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            double summ, proc, ost;
            summ = Convert.ToDouble(TextBox13.Text);
            if (this.GridView3.Rows.Count < 1)
            {
                proc = Convert.ToDouble(GridView2.SelectedRow.Cells[3].Text) / Convert.ToDouble(GridView2.SelectedRow.Cells[5].Text) * Convert.ToDouble(GridView2.SelectedRow.Cells[4].Text);
                if (proc >= summ)
                {
                    proc = summ;
                    summ = 0;
                }
                else
                {
                    summ -= proc;
                }
                ost = Convert.ToDouble(this.GridView2.SelectedRow.Cells[3].Text) - summ;
            }
            else
            {
                proc = Convert.ToDouble(GridView3.Rows[GridView3.Rows.Count-1].Cells[6].Text) / Convert.ToDouble(GridView2.SelectedRow.Cells[5].Text) * Convert.ToDouble(GridView2.SelectedRow.Cells[4].Text) / 100;
                if (proc >= summ)
                {
                    proc = summ;
                    summ = 0;
                }
                else
                {
                    summ -= proc;
                }
                ost = Convert.ToDouble(this.GridView3.Rows[GridView3.Rows.Count - 1].Cells[6].Text) - summ;
            }
            TextBox13.Text = summ.ToString();
            TextBox14.Text = proc.ToString();
            TextBox15.Text = ost.ToString();
            if (st == State.Insert) SqlDataSource3.Insert();
            if (st == State.Update) SqlDataSource3.Update();
            if (st == State.Delete) SqlDataSource3.Delete();
            st = State.Select;
            Button14.Enabled = false;
            Button15.Enabled = false;
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox10.Text = Calendar1.SelectedDate.ToString();

            Button12.Enabled = true;
            Button13.Enabled = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox12.Text = Calendar2.SelectedDate.ToString();
            Button14.Enabled = true;
            Button15.Enabled = true;
        }
    }
}