using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Triangle_Project
{
    public partial class Form1 : Form
    {
        string StarChar = "*"; 
        string [,] StarArray = new string[5,5];

        public Form1()
        {
            InitializeComponent();
        }
        private void checkBox1_CheckedChanged(object sender, EventArgs e) // function e tik e check box 
        {
            textBox1.Enabled = checkBox1.Checked;
            textBox2.Enabled = checkBox1.Checked;
            textBox3.Enabled = checkBox1.Checked;
            textBox4.Enabled = checkBox1.Checked;
            textBox5.Enabled = checkBox1.Checked;
            textBox6.Enabled = checkBox1.Checked;
            textBox7.Enabled = checkBox1.Checked;
            textBox8.Enabled = checkBox1.Checked;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Star(5);
        }
        void Star(int n) // function e tolid e mosalas 
        {

            textBox8.AppendText("This is Our Triangle \n\n");
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j <= i; j++)
                {
                    StarArray[i,j] = StarChar;
                    textBox8.AppendText(StarArray[i,j]);     
                }
                textBox8.AppendText("\n");
            }
        }

        private void button2_Click(object sender, EventArgs e) // dokme exit
        {
            this.Close();
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            //string StarString = StarArray.ToString(); // tabdil array be string 
           // textBox8.AppendText(StarString); // namayesh e string dar textbox 
            
        }
    }
}
