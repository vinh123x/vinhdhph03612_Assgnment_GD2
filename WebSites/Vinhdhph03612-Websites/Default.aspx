<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Chữ tín là thành công.</h2>
            </hgroup>
            <p>
                Đến với chúng tôi bạn sẽ nhận được dịch vụ tốt nhất</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách hàng<asp:DetailsView ID="DetailsView6" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="makh" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="makh" HeaderText="makh" ReadOnly="True" SortExpression="makh" />
                    <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                    <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                    <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [khachhang] WHERE [makh] = @makh" InsertCommand="INSERT INTO [khachhang] ([makh], [hoten], [diachi], [sdt], [email]) VALUES (@makh, @hoten, @diachi, @sdt, @email)" SelectCommand="SELECT * FROM [khachhang]" UpdateCommand="UPDATE [khachhang] SET [hoten] = @hoten, [diachi] = @diachi, [sdt] = @sdt, [email] = @email WHERE [makh] = @makh">
                    <DeleteParameters>
                        <asp:Parameter Name="makh" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="makh" Type="String" />
                        <asp:Parameter Name="hoten" Type="String" />
                        <asp:Parameter Name="diachi" Type="String" />
                        <asp:Parameter Name="sdt" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="hoten" Type="String" />
                        <asp:Parameter Name="diachi" Type="String" />
                        <asp:Parameter Name="sdt" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="makh" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
    </ol>
    <h5>&nbsp;</h5>
    <ol class="round">
        <li class="two">
            <h5>Sản phẩm<asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataKeyNames="masp" DataSourceID="SqlDataSource2" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                    <asp:BoundField DataField="maloaisp" HeaderText="maloaisp" SortExpression="maloaisp" />
                    <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                    <asp:BoundField DataField="donvitinh" HeaderText="donvitinh" SortExpression="donvitinh" />
                    <asp:BoundField DataField="giatien" HeaderText="giatien" SortExpression="giatien" />
                    <asp:BoundField DataField="mieuta" HeaderText="mieuta" SortExpression="mieuta" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [sanpham] ([masp], [maloaisp], [tensp], [donvitinh], [giatien], [mieuta], [anh]) VALUES (@masp, @maloaisp, @tensp, @donvitinh, @giatien, @mieuta, @anh)" SelectCommand="SELECT * FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [maloaisp] = @maloaisp, [tensp] = @tensp, [donvitinh] = @donvitinh, [giatien] = @giatien, [mieuta] = @mieuta, [anh] = @anh WHERE [masp] = @masp">
                    <DeleteParameters>
                        <asp:Parameter Name="masp" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="masp" Type="String" />
                        <asp:Parameter Name="maloaisp" Type="String" />
                        <asp:Parameter Name="tensp" Type="String" />
                        <asp:Parameter Name="donvitinh" Type="String" />
                        <asp:Parameter Name="giatien" Type="Decimal" />
                        <asp:Parameter Name="mieuta" Type="String" />
                        <asp:Parameter Name="anh" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="maloaisp" Type="String" />
                        <asp:Parameter Name="tensp" Type="String" />
                        <asp:Parameter Name="donvitinh" Type="String" />
                        <asp:Parameter Name="giatien" Type="Decimal" />
                        <asp:Parameter Name="mieuta" Type="String" />
                        <asp:Parameter Name="anh" Type="Object" />
                        <asp:Parameter Name="masp" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
    </ol>
    <ol class="round">
        <li class="three">
            <h5>Loại sản phẩm<asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="maloaisp" DataSourceID="SqlDataSource3" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="maloaisp" HeaderText="maloaisp" ReadOnly="True" SortExpression="maloaisp" />
                    <asp:BoundField DataField="tenloai" HeaderText="tenloai" SortExpression="tenloai" />
                    <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [loaisanpham] WHERE [maloaisp] = @maloaisp" InsertCommand="INSERT INTO [loaisanpham] ([maloaisp], [tenloai], [soluong]) VALUES (@maloaisp, @tenloai, @soluong)" SelectCommand="SELECT * FROM [loaisanpham]" UpdateCommand="UPDATE [loaisanpham] SET [tenloai] = @tenloai, [soluong] = @soluong WHERE [maloaisp] = @maloaisp">
                    <DeleteParameters>
                        <asp:Parameter Name="maloaisp" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="maloaisp" Type="String" />
                        <asp:Parameter Name="tenloai" Type="String" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tenloai" Type="String" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="maloaisp" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
            
            
        </li>
        <li class="four">
            <h5>Hóa đơn<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="mahd" DataSourceID="SqlDataSource4" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="mahd" HeaderText="mahd" ReadOnly="True" SortExpression="mahd" />
                    <asp:BoundField DataField="makh" HeaderText="makh" SortExpression="makh" />
                    <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                    <asp:BoundField DataField="giatien" HeaderText="giatien" SortExpression="giatien" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [hoadon] WHERE [mahd] = @mahd" InsertCommand="INSERT INTO [hoadon] ([mahd], [makh], [tensp], [giatien]) VALUES (@mahd, @makh, @tensp, @giatien)" SelectCommand="SELECT * FROM [hoadon]" UpdateCommand="UPDATE [hoadon] SET [makh] = @makh, [tensp] = @tensp, [giatien] = @giatien WHERE [mahd] = @mahd">
                    <DeleteParameters>
                        <asp:Parameter Name="mahd" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="mahd" Type="String" />
                        <asp:Parameter Name="makh" Type="String" />
                        <asp:Parameter Name="tensp" Type="String" />
                        <asp:Parameter Name="giatien" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="makh" Type="String" />
                        <asp:Parameter Name="tensp" Type="String" />
                        <asp:Parameter Name="giatien" Type="Decimal" />
                        <asp:Parameter Name="mahd" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
        <li class="five">
            <h5>Chi tiết hóa đơn<asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" DataKeyNames="mahd,masp" DataSourceID="SqlDataSource5" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="mahd" HeaderText="mahd" ReadOnly="True" SortExpression="mahd" />
                    <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                    <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                    <asp:BoundField DataField="ngaygd" HeaderText="ngaygd" SortExpression="ngaygd" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [chitiethoadon] WHERE [mahd] = @mahd AND [masp] = @masp" InsertCommand="INSERT INTO [chitiethoadon] ([mahd], [masp], [soluong], [ngaygd]) VALUES (@mahd, @masp, @soluong, @ngaygd)" SelectCommand="SELECT * FROM [chitiethoadon]" UpdateCommand="UPDATE [chitiethoadon] SET [soluong] = @soluong, [ngaygd] = @ngaygd WHERE [mahd] = @mahd AND [masp] = @masp">
                    <DeleteParameters>
                        <asp:Parameter Name="mahd" Type="String" />
                        <asp:Parameter Name="masp" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="mahd" Type="String" />
                        <asp:Parameter Name="masp" Type="String" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="ngaygd" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="ngaygd" Type="DateTime" />
                        <asp:Parameter Name="mahd" Type="String" />
                        <asp:Parameter Name="masp" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
    </ol>
    <h5>&nbsp;</h5>
</asp:Content>
