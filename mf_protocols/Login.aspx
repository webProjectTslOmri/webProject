<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>זיהוי משתמש</h1>

    <div class="">
        <div class="form-group col-lg-12">
            <div class="col-lg-2">
                <label for="inputEmail" class="control-label">דואר אלקטרוני</label>
            </div>
            <div class="col-lg-4">
                <input type="text" class="form-control" id="inputEmail" placeholder="דואר אלקטרוני">
            </div>
           <span class="col-lg-6"></span>
        </div>
        <div class="form-group col-lg-12">
            <div class="col-lg-2">
                <label for="inputPassword" class="control-label">סיסמה</label>
            </div>
            <div class="col-lg-4">
                <input type="password" class="form-control" id="inputPassword" placeholder="סיסמה">
            </div>
            <span class="col-lg-6"></span>
        </div>
        <div class="form-group col-lg-12">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="reset" class="btn btn-default">אתחל</button>
                <%--<button type="submit" class="btn btn-primary" runat="server" onclick="">שמור</button>--%>
                <asp:Button OnClick="Submit_Click" Text="כניסה" runat="server" CssClass="btn btn-primary"/>
            </div>
        </div>
    </div>


</asp:Content>

