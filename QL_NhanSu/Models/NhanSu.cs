using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QL_NhanSu.Models
{
    public class NhanSuClass
    {
        public string MaNS { get; set; }
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
}