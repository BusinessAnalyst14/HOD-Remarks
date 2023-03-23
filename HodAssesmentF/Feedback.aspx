<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="HodAssesmentF.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Form</title>
    <style type="text/css">
        
        .auto-style2 {
            position :absolute;
            left: 35%;
        }
        .auto-style3 {
            position :absolute;
            top : 35%;

        }
        .auto-style4 {
            position :absolute;
            top : 20%;
            left: 43%;
        }
       .auto-style5 {
            position :absolute;
            top : 15%;
            left: 70%;
        }
       .auto-style6 {
            position :absolute;
            top : 30%;
            left: 30%;
        }
       </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo.png" /> 
        </div>

        <div>
            <div class="auto-style4">
            <h3>Logged In Employee Id : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
            </div>
        </div>

        <div class="auto-style6">
                <h3> <asp:Label ID="Label2" runat="server" Text="Please Inputs Digits Only (1,2,3,4,5)" ForeColor ="Red" ></asp:Label></h3>
        </div >

        <div class="auto-style5">
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="DSRemarks" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="RemarkName" HeaderText="RemarkName" SortExpression="RemarkName" />
                <asp:BoundField DataField="RemarkMarks" HeaderText="RemarkMarks" SortExpression="RemarkMarks" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="DSRemarks" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [RemarkName], [RemarkMarks] FROM [Remarks]"></asp:SqlDataSource>
        </div>
        <div class="auto-style3">
        

        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="EmpId" DataSourceID="DSEmpData" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ReportingId" HeaderText="ReportingId"  SortExpression="ReportingId" />
                <asp:BoundField DataField="ReportingName" HeaderText="ReportingName"  SortExpression="ReportingName" />
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName"   SortExpression="EmpName" />
                <asp:BoundField DataField="Communication_Interpersonal_Skills" HeaderText="Communication_Interpersonal_Skills" SortExpression="Communication_Interpersonal_Skills" />
                <asp:BoundField DataField="Technical_Skills" HeaderText="Technical_Skills" SortExpression="Technical_Skills" />
                <asp:BoundField DataField="Team_Work" HeaderText="Team_Work" SortExpression="Team_Work" />
                <asp:BoundField DataField="Job_Performancek" HeaderText="Job_Performancek" SortExpression="Job_Performancek" />
                <asp:BoundField DataField="Initiative_Potential_to_take_New_Assignments" HeaderText="Initiative_Potential_to_take_New_Assignments" SortExpression="Initiative_Potential_to_take_New_Assignments" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
            <asp:SqlDataSource ID="DSEmpData" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [EmpData] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [EmpData] ([ReportingId], [ReportingName], [EmpId], [EmpName], [Communication_Interpersonal_Skills], [Technical_Skills], [Team_Work], [Job_Performancek], [Initiative_Potential_to_take_New_Assignments]) VALUES (@ReportingId, @ReportingName, @EmpId, @EmpName, @Communication_Interpersonal_Skills, @Technical_Skills, @Team_Work, @Job_Performancek, @Initiative_Potential_to_take_New_Assignments)" SelectCommand="SELECT * FROM [EmpData] WHERE ([ReportingId] = @ReportingId)" UpdateCommand="UPDATE [EmpData] SET [ReportingId] = @ReportingId, [ReportingName] = @ReportingName, [EmpName] = @EmpName, [Communication_Interpersonal_Skills] = @Communication_Interpersonal_Skills, [Technical_Skills] = @Technical_Skills, [Team_Work] = @Team_Work, [Job_Performancek] = @Job_Performancek, [Initiative_Potential_to_take_New_Assignments] = @Initiative_Potential_to_take_New_Assignments WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ReportingId" Type="Int32" />
                    <asp:Parameter Name="ReportingName" Type="String" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="Communication_Interpersonal_Skills" Type="String" />
                    <asp:Parameter Name="Technical_Skills" Type="String" />
                    <asp:Parameter Name="Team_Work" Type="String" />
                    <asp:Parameter Name="Job_Performancek" Type="String" />
                    <asp:Parameter Name="Initiative_Potential_to_take_New_Assignments" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="ReportingId" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ReportingId" Type="Int32" />
                    <asp:Parameter Name="ReportingName" Type="String" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="Communication_Interpersonal_Skills" Type="String" />
                    <asp:Parameter Name="Technical_Skills" Type="String" />
                    <asp:Parameter Name="Team_Work" Type="String" />
                    <asp:Parameter Name="Job_Performancek" Type="String" />
                    <asp:Parameter Name="Initiative_Potential_to_take_New_Assignments" Type="String" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div> 
       </form>
</body>
</html>
