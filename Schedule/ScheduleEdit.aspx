<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ScheduleEdit.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduleEdit" KeyFieldName="id">
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" ButtonType="Image">
                <NewButton Text="Додати">
                    <Image AlternateText="Додати" Height="16px" Width="16px" Url="~/_Иконки/Add.ico">
                    </Image>
                </NewButton>
                <EditButton Text="Змінити">
                    <Image AlternateText="Змінити" Height="16px" Width="16px" Url="~/_Иконки/Edit.ico">
                    </Image>
                </EditButton>
                <CancelButton Text="Відмінити">
                    <Image AlternateText="Відмінити" Height="16px" Url="~/_Иконки/Knob Snapback.ico" Width="16px" />
                </CancelButton>
                <DeleteButton Text="Видалити">
                    <Image Height="16" Width="16" Url="~/_Иконки/Delete 2.ico" />
                </DeleteButton>
                <UpdateButton Text="Зберегти">
                    <Image AlternateText="Зберегти" Height="16px" Url="~/_Иконки/Ok.ico" Width="16px" />
                </UpdateButton>
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="isFlow" VisibleIndex="18" Caption="Поточность">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataComboBoxColumn Caption="Группа" FieldName="id_Group" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDataSource_Group" TextField="NameOfGroup" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Предмет" FieldName="id_Subject" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlDataSource_Subject" TextField="SubjectName" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Тип предмета" FieldName="id_TypeOfSubject" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="SqlDataSource_Type_Of_Subject" TextField="NameOfSubjectType" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Время" FieldName="id_UniversityTime" VisibleIndex="9">
                <PropertiesComboBox DataSourceID="SqlDataSource_University_Time" TextField="NumberCouple" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="День" FieldName="id_Day" VisibleIndex="11">
                <PropertiesComboBox DataSourceID="SqlDataSource_Day" TextField="NameOfDay" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Тип Недели" FieldName="id_TypeWeek" VisibleIndex="13">
                <PropertiesComboBox DataSourceID="SqlDataSource_Type_Week" TextField="TypeWeek" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Преподователь" FieldName="id_UniversityTeachers" VisibleIndex="15">
                <PropertiesComboBox DataSourceID="SqlDataSource_University_Teachers" TextField="TeachersSurname" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Аудитория" FieldName="id_LectureHall" VisibleIndex="17">
                <PropertiesComboBox DataSourceID="SqlDataSource_Lecture_Hall" TextField="NumberLectureHall" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceScheduleEdit" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" DeleteCommand="Schedule_table_Delete" DeleteCommandType="StoredProcedure" InsertCommand="Schedule_table_Insert" InsertCommandType="StoredProcedure" SelectCommand="Schedule_table_Select" SelectCommandType="StoredProcedure" UpdateCommand="Schedule_table_Update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Subject" Type="Int32" />
            <asp:Parameter Name="id_Group" Type="Int32" />
            <asp:Parameter Name="id_UniversityTeachers" Type="Int32" />
            <asp:Parameter Name="id_LectureHall" Type="Int32" />
            <asp:Parameter Name="id_Day" Type="Int32" />
            <asp:Parameter Name="id_UniversityTime" Type="Int32" />
            <asp:Parameter Name="id_TypeWeek" Type="Int32" />
            <asp:Parameter Name="id_TypeOfSubject" Type="Int32" />
            <asp:Parameter Name="isFlow" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="id_Subject" Type="Int32" />
            <asp:Parameter Name="id_Group" Type="Int32" />
            <asp:Parameter Name="id_UniversityTeachers" Type="Int32" />
            <asp:Parameter Name="id_LectureHall" Type="Int32" />
            <asp:Parameter Name="id_Day" Type="Int32" />
            <asp:Parameter Name="id_UniversityTime" Type="Int32" />
            <asp:Parameter Name="id_TypeWeek" Type="Int32" />
            <asp:Parameter Name="id_TypeOfSubject" Type="Int32" />
            <asp:Parameter Name="isFlow" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Subject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Subject_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Group" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Group_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_University_Teachers" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTeachers_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Lecture_Hall" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [LectureHall_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Day" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Day_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_University_Time" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTime_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Type_Week" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeWeek_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Type_Of_Subject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeOfSubject_table]"></asp:SqlDataSource>
    


   
    



   
   
    



</asp:Content>
