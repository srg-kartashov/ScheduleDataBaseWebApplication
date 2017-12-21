<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ScheduleView.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



   
    



    <asp:SqlDataSource ID="SqlDataSourceScheduleView" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="Schedule_table_Select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduleView" KeyFieldName="id">
        <Columns>
            <dx:GridViewDataCheckColumn FieldName="isFlow" VisibleIndex="20" Visible="False">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataComboBoxColumn Caption="Группа" FieldName="id_Group" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDataSourceGroup" TextField="NameOfGroup" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Предмет" FieldName="id_Subject" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="SqlDataSourceSubject" TextField="SubjectName" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Тип предмета" FieldName="id_TypeOfSubject" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="SqlDataSourceTypeOfSubject" TextField="NameOfSubjectType" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Время" FieldName="id_UniversityTime" VisibleIndex="8">
                <PropertiesComboBox DataSourceID="SqlDataSourceUniversityTime" TextField="NumberCouple" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="День" FieldName="id_Day" VisibleIndex="10">
                <PropertiesComboBox DataSourceID="SqlDataSourceDay" TextField="NameOfDay" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Тип недели" FieldName="id_TypeWeek" VisibleIndex="12">
                <PropertiesComboBox DataSourceID="SqlDataSourceTypeWeek" TextField="TypeWeek" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Преподаватель" FieldName="id_UniversityTeachers" VisibleIndex="14">
                <PropertiesComboBox DataSourceID="SqlDataSourceUniversityTeachers" TextField="TeachersSurname" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Аудитория" FieldName="id_LectureHall" VisibleIndex="19">
                <PropertiesComboBox DataSourceID="SqlDataSourceLectureHall" TextField="NumberLectureHall" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>



   
    



    <asp:SqlDataSource ID="SqlDataSourceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Group_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceSubject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Subject_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceTypeOfSubject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeOfSubject_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceUniversityTime" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTime_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceDay" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Day_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceTypeWeek" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeWeek_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceUniversityTeachers" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTeachers_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceLectureHall" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [LectureHall_table]"></asp:SqlDataSource>



   
    



</asp:Content>
