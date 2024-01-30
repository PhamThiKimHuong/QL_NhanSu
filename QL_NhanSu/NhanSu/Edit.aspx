<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="QL_NhanSu.NhanSu.Edit" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Public/css/edit.css" rel="stylesheet" />
    <script src="../Public/js/nhansu.js"></script>

    <div class="personal-info-page">
        <div class="personal-info-header">
            <div class="col-2">
                <h3>Cập nhật hồ sơ</h3>
            </div>
            <div class="col-10 button-container">
                <!--button-->
                <dx:ASPxButton runat="server" ID="btn_edit" Text="Edit" CommandName="Edit" Image-IconID="edit_edit_16x16" CssClass="customButton" OnClick="btn_edit_Click" />

                <dx:ASPxButton runat="server" ID="btn_save" Text="Lưu" CommandName="Save" Image-IconID="xaf_action_save_new_svg_16x16" CssClass="customButton" OnClick="btn_save_Click" />

                <dx:ASPxButton runat="server" ID="btn_delete" Text="Xóa" CommandName="Delete" CausesValidation="false" Image-IconID="hybriddemoicons_bottompanel_hybriddemo_delete_svg_dark_16x16" CssClass="customButton" OnClick="btn_delete_Click" />

                <dx:ASPxButton runat="server" ID="btn_cancel" Text="Hủy" Image-IconID="actions_cancel_16x16office2013" CommandName="Cancel" CausesValidation="false" OnClick="btn_cancel_Click" />


            </div>
        </div>

        <div class="row info-container">
            <div class="col-12">
                <div class="img" style="width: 100%">
                    <!-- Hình ảnh nếu cần -->
                    <dx:ASPxBinaryImage ID="BinaryImage" ClientInstanceName="ClientBinaryImage" Width="100" Height="100" ShowLoadingImage="true" LoadingImageUrl="~/Content/Loading.gif" runat="server">
                        <EditingSettings Enabled="true">
                            <UploadSettings>
                                <UploadValidationSettings MaxFileSize="4194304"></UploadValidationSettings>
                            </UploadSettings>
                        </EditingSettings>
                    </dx:ASPxBinaryImage>
                </div>


                <div class="personal-info" style="width: 100%;">
                    <h4>Thông tin chung</h4>
                    <div class="row" style="display: flex; margin: 0">
                        <div class="col-6" style="width: 50%; padding-left: 50px">
                            <div class="employee-id">
                                <div class="col-6 label">
                                    <label>Mã nhân viên</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_employeeid" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập mã nhân viên" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="full-name">
                                <div class="col-6 label">
                                    <label>Họ và tên</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_fullname" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập mã họ và tên nhân viên" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="tax-id">
                                <div class="col-6 label">
                                    <label>Mã số thuế</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_taxid" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập mã số thuế" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="gende">
                                <div class="col-6 label">
                                    <label>Giới tính</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxRadioButtonList ID="rbtn_gender" runat="server" BackColor="Transparent" Value='<%# Bind("GioiTinh") %>'
                                        RepeatDirection="Horizontal" EncodeHtml="False">
                                        <Items>
                                            <dx:ListEditItem Text="Nam" />
                                            <dx:ListEditItem Text="Nữ" />
                                        </Items>
                                        <Paddings Padding="0px" />
                                        <Border BorderStyle="None" />
                                    </dx:ASPxRadioButtonList>
                                </div>
                            </div>

                            <div class="birthdate">
                                <div class="col-6 label">
                                    <label>Ngày sinh</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxDateEdit ID="edit_birthdate" runat="server" EditFormat="Custom" Date="" Width="100%" Height="40px">
                                        <CalendarProperties>
                                            <FastNavProperties DisplayMode="Inline" />
                                        </CalendarProperties>
                                        <TimeSectionProperties>
                                            <TimeEditProperties EditFormatString="hh:mm tt" />
                                        </TimeSectionProperties>
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập ngày sinh" />
                                        </ValidationSettings>
                                    </dx:ASPxDateEdit>
                                </div>
                            </div>

                            <div class="birthplace">
                                <div class="col-6 label">
                                    <label>Nơi sinh</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_birthplace" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập nơi sinh" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="hometown">
                                <div class="col-6 label">
                                    <label>Quê quán</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_hometown" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập quê quán" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="permanent_address">
                                <div class="col-6 label">
                                    <label>Hộ khẩu thường trú</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_permanent_address" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập hộ khẩu thường trú" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>
                        </div>


                        <div class="col-6" style="width: 50%">
                            <div class="current_residence">
                                <div class="col-6 label">
                                    <label>Chỗ ở hiện tại</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_current_residence" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập chỗ ở hiện tại" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="person_ethnicity">
                                <div class="col-6 label">
                                    <label>Dân tộc</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_person_ethnicity" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập dân tộc" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="religion">
                                <div class="col-6 label">
                                    <label>Tôn giáo</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_religion" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập tôn giáo" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="nationality">
                                <div class="col-6 label">
                                    <label>Quốc tịch</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_nationality" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập quốc tịch" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="phone_number">
                                <div class="col-6 label">
                                    <label>Số điện thoại</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox runat="server" EnableClientSideAPI="True" Width="100%" ID="txt_phonenumber"
                                        ClientInstanceName="PhoneNumber" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" Display="Dynamic" ErrorTextPosition="Bottom">
                                            <RegularExpression ErrorText="Kiểm tra lại số điện thoại" ValidationExpression="^\d{10}$" />
                                            <RequiredField IsRequired="True" ErrorText="Nhập số điện thoại" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                            <div class="email">
                                <div class="col-6 label">
                                    <label>Email</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox runat="server" EnableClientSideAPI="True" Width="100%" ID="txt_email"
                                        ClientInstanceName="Email" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" Display="Dynamic" ErrorTextPosition="Bottom">
                                            <RegularExpression ErrorText="Kiểm tra lại mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                            <RequiredField IsRequired="True" ErrorText="Nhập email" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>

                            </div>

                            <div class="status">
                                <div class="col-6 label">
                                    <label>Trạng thái</label>
                                </div>
                                <div class="col-6">
                                    <dx:ASPxTextBox ID="txt_status" runat="server" Width="100%" Height="40px">
                                        <ValidationSettings SetFocusOnError="True" ErrorTextPosition="Bottom" Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Nhập trạng thái làm việc" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
