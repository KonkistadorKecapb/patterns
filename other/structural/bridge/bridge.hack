namespace Bridge;

<<__EntryPoint>>
function bridge(): void {

    echo "---=== 1) bridge ===---\n";

    (new AnnualReport(new Word()))->print();

    echo "\n\n\n---=== 2) bridge ===---\n";

    (new AnnualReport(new Pdf()))->print();

    echo "\n\n\n---=== 3) bridge ===---\n";

    (new WeeklyReport(new Word()))->print();

    echo "\n\n\n---=== 4) bridge ===---\n";

    (new WeeklyReport(new Pdf()))->print();

    echo "\n\n\n";
}
