namespace Proxy;

<<__EntryPoint>>
function proxy(): void {

    echo "---=== 1) 1st proxy example ===---\n";

    echo "---=== 1.1) proxy ===---\n";

    $proxy1 = getSomeProxy(true);

    echo $proxy1->operation1()."\n";
    echo $proxy1->operation2()."\n";


    echo "---=== 1.2) proxy ===---\n";

    $proxy2 = getSomeProxy(false);

    echo $proxy2->operation1()."\n";
    echo $proxy2->operation1()."\n";
    echo $proxy2->operation1()."\n";
    echo $proxy2->operation2()."\n";


    // echo "---=== 2) 2nd proxy example ===---\n";
    // ...
}

function getSomeProxy(bool $type): ISubject {
    $realSubject = new RealSubject();

    if ($type) {
        return $realSubject;
    } else {
        return new Proxy($realSubject);
    }
}
