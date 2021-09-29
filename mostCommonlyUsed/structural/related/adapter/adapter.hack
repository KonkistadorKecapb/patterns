namespace Adapter;

<<__EntryPoint>>
function adapter(): void {

    echo "---=== 1) 1st adapter example ===---\n";

    $adapter1 = getSomeAdapter(true);

    echo $adapter1->operation1()."\n";
    echo $adapter1->operation2()."\n";


    echo "---=== 2) 2nd adapter example ===---\n";

    $adapter2 = getSomeAdapter(false);

    echo $adapter2->operation1()."\n";
    echo $adapter2->operation2()."\n";


    // echo "---=== 3) 3rd adapter ===---\n";
    // ...
}

function getSomeAdapter(bool $type): IAdapter {
    if ($type) {
        $adaptee1 = new Adaptee1();
        return new ConcreteAdapter1($adaptee1);
    } else {
        $adaptee2 = new Adaptee2();
        return new ConcreteAdapter2($adaptee2);
    }
}
