<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="UniversityPulpit.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" DeleteCommand="UniversityPulpit_table_Delete" DeleteCommandType="StoredProcedure" InsertCommand="UniversityPulpit_table_INSERT" InsertCommandType="StoredProcedure" SelectCommand="UniversityPulpit_table_Select" SelectCommandType="StoredProcedure" UpdateCommand="UniversityPulpit_table_Update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NamePulpit" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="NamePulpit" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceHousing" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityHousing_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceFaculty" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityFaculty_table]"></asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id">
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
            <dx:GridViewDataTextColumn FieldName="NamePulpit" VisibleIndex="2" Caption="Название">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Корпус" FieldName="id_Housing" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="SqlDataSourceHousing" TextField="AddressStreet" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Факультет" FieldName="id_Faculty" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlDataSourceFaculty" TextField="NameFaculty" ValueField="id">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>



</asp:Content>
