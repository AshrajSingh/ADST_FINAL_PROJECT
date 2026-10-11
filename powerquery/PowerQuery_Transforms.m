// ==============================================================================
// MCA FINAL YEAR CAPSTONE PROJECT - POWER QUERY M CODE
// ==============================================================================
// This code is automatically generated when you follow the button clicks below.
// You do NOT need to type this yourself — Power BI generates it for you!
// 
// But if your examiner asks to see the M code, you can open:
//   Power Query Editor -> View tab -> Advanced Editor
// and this is exactly what you will see.
//
// BUTTON CLICK STEPS THAT GENERATE THIS CODE:
// Step 1: Home > Get Data > Text/CSV > Select your file > Transform Data
// Step 2: Select 'Certifications' column > Home > Replace Values > null → None
// Step 3: Add Column > Conditional Column > Name: 'Experience Level'
// Step 4: Add Column > Conditional Column > Name: 'Hired Flag'
// Step 5: Home > Close & Apply
// ==============================================================================

let
    // Step 1: Load CSV file
    // (Power BI generates this when you click: Home > Get Data > Text/CSV)
    Source = Csv.Document(
        File.Contents("D:\data science\DATASETS\AI_Resume_Screening-selected-columns.csv"),
        [Delimiter=",", Columns=10, Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    
    // Step 2: Use First Row as Column Headers
    // (Power BI generates this automatically)
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    
    // Step 3: Set Column Data Types
    // (Power BI generates this when you click each column header icon)
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"Resume_ID", Int64.Type},
        {"Name", type text},
        {"Skills", type text},
        {"Experience (Years)", Int64.Type},
        {"Education", type text},
        {"Certifications", type text},
        {"Job Role", type text},
        {"Recruiter Decision", type text},
        {"Salary Expectation ($)", Currency.Type},
        {"Projects Count", Int64.Type}
    }),
    
    // Step 4: Replace null values in Certifications with 'None'
    // (Generated when you: Select column > Home > Replace Values > null → None)
    ReplacedNulls = Table.ReplaceValue(
        ChangedTypes,
        null,
        "None",
        Replacer.ReplaceValue,
        {"Certifications"}
    ),
    
    // Step 5: Create 'Experience Level' conditional column
    // (Generated when you: Add Column > Conditional Column)
    AddedExperienceLevel = Table.AddColumn(
        ReplacedNulls, 
        "Experience Level", 
        each 
            if [#"Experience (Years)"] <= 2 then "Entry Level (0-2 Yrs)"
            else if [#"Experience (Years)"] <= 4 then "Mid Level (3-4 Yrs)"
            else "Senior Level (5+ Yrs)", 
        type text
    ),
    
    // Step 6: Create 'Hired Flag' conditional column
    // (Generated when you: Add Column > Conditional Column)
    AddedHiredFlag = Table.AddColumn(
        AddedExperienceLevel, 
        "Hired Flag", 
        each if [Recruiter Decision] = "Hire" then 1 else 0, 
        Int64.Type
    )
in
    AddedHiredFlag
