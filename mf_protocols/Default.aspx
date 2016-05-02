<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
         <h1>{{selectedPage.name}}</h1>
        <div data-ng-repeat="p in pages" data-ng-include="'pages/' + p.file + '.htm'" onload="loadPageEvents()" data-ng-show="p.file == selectedPage.file"></div>
    </div>
    
</asp:Content>

