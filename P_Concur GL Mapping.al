page 50108 "Concur G/L Mapping"
{
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Concur Mapping";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Concur Account Code"; "Concur Account Code")
                {
                }
                field("NAV G/L No. Production"; "NAV G/L No. Production")
                {
                }
                field("NAV G/L No. Sales"; "NAV G/L No. Sales")
                {
                }
                field("NAV G/L No. Admin"; "NAV G/L No. Admin")
                {
                }
                field(Remarks; Remarks)
                {
                }
                field("BU Number"; "BU Number")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        FILTERGROUP(2);
        SETRANGE("Setup Type", "Setup Type"::"G/L Account");
        FILTERGROUP(0);
    end;
}

