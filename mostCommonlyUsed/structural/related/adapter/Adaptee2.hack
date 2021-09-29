namespace Adapter;

final class Adaptee2 {

    final public function __construct() {

    }

    final public function doSomeOperation1(): int {
        return 10;
    }

    final public function doSomeOperation2(): string {
        return 'operation2';
    }
}
