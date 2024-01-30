<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QL_NhanSu.NhanSu.Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="../Public/css/nhansu.css" rel="stylesheet" />
    <div class="home-page">
        <div class="home-header">
            <h3>Tổng quan</h3>
        </div>

        <div class="gridview_db">
            <div class="header row">
                <!--Add new-->
                <div class="addnew_container">
                    <dx:ASPxButton runat="server" Text="Thêm mới" AutoPostBack="false" Image-IconID="actions_add_16x16office2013" CssClass="customButton" OnClick="addnewClick">
                    </dx:ASPxButton>

                    <%--<dx:ASPxButton runat="server" Text="Xóa" AutoPostBack="false" Image-IconID="hybriddemoicons_bottompanel_hybriddemo_delete_svg_dark_16x16" CssClass="customButton" OnClick="deleteClick">
                    </dx:ASPxButton>--%>
                </div>
            </div>

            <div class="gridview-container" style="border: 1px solid #808080">
                <div class="gridview-body" style="border: none">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="MaNS" Width="100%">
                        <SettingsSearchPanel Visible="true" />
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0" Width="50" FixedStyle="Left"></dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="MaNS" ReadOnly="True" VisibleIndex="1" Width="150" Caption="Mã nhân viên" FixedStyle="Left"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="HoTen" VisibleIndex="2" Width="200" Caption="Họ và tên" FixedStyle="Left"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MST" VisibleIndex="3" Width="150" Caption="Mã số thuế"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataCheckColumn FieldName="GioiTinh" VisibleIndex="4" Width="100" Caption="Giới tính">
                                <DataItemTemplate>
                                    <%#Eval("GioiTinh") == DBNull.Value ? "" : (bool)Eval("GioiTinh") ? "Nam" : "Nữ" %>
                                </DataItemTemplate>
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataDateColumn FieldName="NgSinh" VisibleIndex="5" Width="100px" Caption="Ngày sinh"></dx:GridViewDataDateColumn>
                            <dx:GridViewDataTextColumn FieldName="NoiSinh" VisibleIndex="6" Width="200px" Caption="Nơi sinh"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="QueQuan" VisibleIndex="7" Width="200px" Caption="Quê quán"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="HoKhauTT" VisibleIndex="8" Width="250px" Caption="Hộ khẩu thường trú"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ChoOHienTai" VisibleIndex="9" Width="250px" Caption="Chỗ ở hiện tại"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="DanToc" VisibleIndex="10" Width="100px" Caption="Dân tộc"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TonGiao" VisibleIndex="11" Width="100px" Caption="Tôn giáo"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="QuocTich" VisibleIndex="12" Width="200px" Caption="Quốc tịch"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SDT" VisibleIndex="13" Width="150px" Caption="Số điện thoại"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="14" Width="150px" Caption="Email"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TrangThai" VisibleIndex="15" Width="150px" Caption="Trạng thái"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataBinaryImageColumn FieldName="HinhAnh" VisibleIndex="16" Width="200" Caption="Hình ảnh">
                                <PropertiesBinaryImage ImageHeight="170px" ImageWidth="160px">
                                    <EditingSettings Enabled="true" />
                                </PropertiesBinaryImage>
                            </dx:GridViewDataBinaryImageColumn>
                        </Columns>
                        <%-- Page--%>
                        <SettingsPager PageSize="10" SEOFriendly="Enabled">
                            <PageSizeItemSettings Visible="true" />
                        </SettingsPager>
                        <%-- scroll right --%>
                        <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="520" />
                        <%-- Cố định cột --%>
                        <Settings HorizontalScrollBarMode="Visible" />
                        <SettingsBehavior AutoExpandAllGroups="true" />

                        <%-- chọn hàng --%>
                        <SettingsBehavior AllowSelectByRowClick="true" />

                    </dx:ASPxGridView>
                    <asp:LinqDataSource runat="server" EntityTypeName="" ID="LinqDataSource1" ContextTypeName="QL_NhanSu.NhanSuDataContext" TableName="NHANVIENs"></asp:LinqDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
