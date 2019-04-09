using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace form_dangnhap
{
    public partial class dangnhap : Form
    {
        public string tendn;
        public string matkhau;
        public string chucvu;
        public dangnhap()
        {
            InitializeComponent();
        }

        private void bt_dangnhap_Click(object sender, EventArgs e)
        {
            if (tb_taikhoan.Text == "")
            {
                MessageBox.Show("Ban phai nhap ten tai khoan", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ActiveControl = tb_taikhoan;
                return;
            }
            if (tb_matkhau.Text == "")
            {
                MessageBox.Show("ban phai nhap mat khau", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ActiveControl = tb_matkhau;
                return;
            }
            if (tb_chucvu.Text == "")
            {
                MessageBox.Show("ban phai dien chuc vu", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ActiveControl = tb_chucvu;
                return;
            }
            tendn = tb_taikhoan.Text;
            matkhau = tb_matkhau.Text;
            chucvu = tb_chucvu.Text;
            DataSet data = new DataSet();
            string query = "select * from dbo.NhanVien nv ,dbo.ChucVu cv where nv.MaNV=@matkhau and nv.Hoten=@hoten and cv.TenCV=@tencv and nv.MaCV = cv.MaCV";

            using (SqlConnection connection = new SqlConnection(DataNhanSu.connection))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@matkhau", matkhau);
                command.Parameters.AddWithValue("@hoten", tendn);
                command.Parameters.AddWithValue("@tenCV", chucvu);
                SqlDataReader adapter = command.ExecuteReader();
                //adapter.Fill(data);
                if (adapter.Read() == true)
                {
                    //MessageBox.Show("dang nhap thanh cong");
                    Home f1 = new Home();
                    this.Visible = false;
                    f1.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Tên tài khoản hoặc mật khẩu không đúng", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    ActiveControl = tb_taikhoan;
                }
                connection.Close();
            }
        }

        private void bt_thoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
