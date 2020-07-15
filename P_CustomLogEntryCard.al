page 50102 "Custom Log Entry Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Custom Log Entry";
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;

                }
                field("Table No."; "Table No.") { }
                field("Table Name."; "Table Name.") { }
                field("Created By"; "Created By") { }
                field("Creation Date Time"; "Creation Date Time") { }
                field("Created Date"; "Created Date") { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}