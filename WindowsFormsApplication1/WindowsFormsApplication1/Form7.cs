using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WindowsFormsApplication1
{
    public partial class Form7 : Form

    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=mydb;User Id=root;password='Suk123456'");
        int i,j;
        public Form7()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            i = 0;
            j = 0;
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from user_general where user_id = '" + textBox4.Text + "';";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i == 0)
            {
                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "select * from user_email where email = '" + textBox6.Text + "';";
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
                da1.Fill(dt1);
                j = Convert.ToInt32(dt1.Rows.Count.ToString());

                if (j == 0)
                {
                    MySqlCommand cmd2 = con.CreateCommand();
                    cmd2.CommandType = CommandType.Text;
                    cmd2.CommandText = "insert into user_general values ('" +textBox4.Text+ "','" +textBox5.Text+ "','" +textBox1.Text+ "','" + textBox2.Text + "','" + textBox3.Text + "');";
                    cmd2.ExecuteNonQuery();
                    DataTable dt2 = new DataTable();
                    MySqlDataAdapter da2 = new MySqlDataAdapter(cmd);
                    da2.Fill(dt2);

                    MySqlCommand cmd3 = con.CreateCommand();
                    cmd3.CommandType = CommandType.Text;
                    cmd3.CommandText = "insert into user_email values ('" + textBox4.Text + "','" + textBox6.Text + "');";
                    cmd3.ExecuteNonQuery();
                    DataTable dt3 = new DataTable();
                    MySqlDataAdapter da3 = new MySqlDataAdapter(cmd);
                    da3.Fill(dt3);

                    MySqlCommand cmd4 = con.CreateCommand();
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = "insert into user_phone values ('" + textBox4.Text + "','" + textBox7.Text + "');";
                    cmd4.ExecuteNonQuery();
                    DataTable dt4 = new DataTable();
                    MySqlDataAdapter da4 = new MySqlDataAdapter(cmd);
                    da4.Fill(dt4);

                    label7.Text = "Entered details added to the system";

                }
                else
                {
                    label7.Text = "User Email already existing";
                }
            }
            else
            {
                label7.Text = "Username already existing";
            }
            con.Close();
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }
    }
}
