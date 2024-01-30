using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_NhanSu.NhanSu
{
    public partial class NhanSu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxGridView1.DataSource = GetAllNhanVienList();
            ASPxGridView1.DataBind();
        }
        protected List<NhanVien> GetAllNhanVienList()
        {
            // Khởi tạo context
            using (var context = new NhanSuDataContext())
            {
                // Thực hiện truy vấn LINQ
                var query = from nhanvien in context.NHANVIENs
                            select new NhanVien
                            {
                                MaNV = nhanvien.MaNV,
                                HoTen = nhanvien.HoTen,
                                GioiTinh = (bool)nhanvien.GioiTinh,
                                NgSinh = nhanvien.NgSinh != null ? (DateTime)nhanvien.NgSinh : DateTime.Now,
                                NoiSinh = nhanvien.NoiSinh,
                                QueQuan = nhanvien.QueQuan,
                                HoKhauTT = nhanvien.HoKhauTT,
                                ChoOHienTai = nhanvien.ChoOHienTai,
                                DanToc = nhanvien.DanToc,
                                TonGiao = nhanvien.TonGiao,
                                QuocTich = nhanvien.QuocTich,
                                SDT = nhanvien.SDT != null ? nhanvien.SDT.ToString() : null,
                                Email = nhanvien.Email,
                                HinhAnh = nhanvien.HinhAnh != null ? nhanvien.HinhAnh.ToArray() : null,
                                TrangThai = nhanvien.TrangThai
                            };
                // Chuyển kết quả thành List
                List<NhanVien> nhanVienList = query.ToList();
                return nhanVienList;
            }
        }
        public class NhanVien
        {
            public string MaNV { get; set; }
            public string HoTen { get; set; }
            public int MST { get; set; }
            public bool GioiTinh { get; set; }
            public DateTime NgSinh { get; set; }
            public string NoiSinh { get; set; }
            public string QueQuan { get; set; }
            public string HoKhauTT { get; set; }
            public string ChoOHienTai { get; set; }
            public string DanToc { get; set; }
            public string TonGiao { get; set; }
            public string QuocTich { get; set; }
            public string SDT { get; set; }
            public string Email { get; set; }
            public Byte[] HinhAnh { get; set; }
            public string TrangThai { get; set; }
        }

        protected void addnewClick(object sender, EventArgs e)
        {
            // Chuyển hướng (redirect) tới trang AddNew.aspx
            Response.Redirect("AddNew.aspx");
        }

    }
}