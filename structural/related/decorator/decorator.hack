namespace Decorator;

<<__EntryPoint>>
function decorator(): void {

    echo "---=== 1) 1st decorator example ===---\n";

    echo "---=== 1.1) decorator ===---\n";

    $decorator1 = getSomeDecorator(1);

    echo $decorator1->operation1()."\n";
    echo $decorator1->operation2()."\n";


    echo "---=== 1.2) decorator ===---\n";

    $decorator2 = getSomeDecorator(2);

    echo $decorator2->operation1()."\n";
    echo $decorator2->operation2()."\n";


    echo "---=== 1.3) decorator ===---\n";

    $decorator2 = getSomeDecorator(3);

    echo $decorator2->operation1()."\n";
    echo $decorator2->operation2()."\n";


    echo "---=== 1.4) decorator ===---\n";

    $decorator2 = getSomeDecorator(4);

    echo $decorator2->operation1()."\n";
    echo $decorator2->operation2()."\n";


    // echo "---=== 2) 2nd decorator example ===---\n";
    // ...
}

function getSomeDecorator(int $type): IComponent {

    $dataBase = new DataBase();

    if ($type === 1) {
        return $dataBase;
    } else if ($type === 2) {
        return new Cache($dataBase);
    } else if ($type === 3) {
        return new Logger($dataBase, 'only logger');
    } else if ($type === 4) {
        return new Logger(new Cache($dataBase), 'with cache');
    }

    throw new \Exception("No implementation for type [$type]");
}
