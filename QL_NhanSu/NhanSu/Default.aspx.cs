using QL_NhanSu.DataSourceDBML;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QL_NhanSu.Models;

namespace QL_NhanSu.NhanSu
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxGridView1.DataSource = GetAllNhanVienList();
            ASPxGridView1.DataBind();
        }
        protected List<NhanSuClass> GetAllNhanVienList()
        {
            // Khởi tạo context
            using (var context = new NhanSuDataContext())
            {
                // Thực hiện truy vấn LINQ
                var query = from nhanvien in context.NHANSUs
                            select new NhanSuClass
                            {
                                MaNS = nhanvien.MaNS,
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
                List<NhanSuClass> nhanVienList = query.ToList();
                return nhanVienList;
            }
        }
                protected void addnewClick(object sender, EventArgs e)
        {
            // Chuyển hướng (redirect) tới trang AddNew.aspx
            Response.Redirect("AddNew.aspx");
        }
    }
}