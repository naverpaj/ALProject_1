report 50101 "Custom Change Log"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(DataItemName; "Custom Log Entry")
        {
            column(Entry_No_; "Entry No.") { }
            column(Table_No_; "Table No.") { }
            column(Table_Name_; "Table Name.") { }
            column(Created_By; "Created By") { }
            column(Creation_Date_Time; "Creation Date Time") { }
        }
    }

    var
        myInt: Integer;
}