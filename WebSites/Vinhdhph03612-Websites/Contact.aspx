<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Liên hệ với chúng tôi.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            Trong giờ<span class="label"> hành chính:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            Ngoài<span class="label"> giờ hành chính:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            Bộ phận hỗ<span class="label"> trợ:</span>
            hotr<span>o@hoangvinh.com</span>
        </p>
        <p>
            Bộ<span class="label"> phận bán hàng:</span>
            <span>banhang<a href="mailto:Marketing@example.com">@hoangvinh.com</a></span>
        </p>
        <p>
            Chung<span class="label">:</span>
            <span>chung<a href="mailto:General@example.com">@hoangvinh.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Hàng Giấy - Hoàn Kiếm - Hà Nội - Việt Nam</p>
        <p>
            <iframe id="I1" allowfullscreen="" frameborder="0" height="450" name="I1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1861.9108134532496!2d105.8467426580294!3d21.039821996498134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb99eeccc85%3A0xd2b918c240faf00a!2zNiBIw6BuZyBHaeG6pXksIEjDoG5nIE3DoywgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1456313429207" style="border: 0" width="600"></iframe>
&nbsp;</p>
    </section>
</asp:Content>