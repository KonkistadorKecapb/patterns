namespace Adapter;

final class Adaptee1 {

    final public function __construct() {

    }

    final public function doSomeOperation1(): int {
        return 4;
    }

    final public function doSomeOperation2(): int {
        return 6;
    }

    final public function doSomeOperation3(): string {
        return 'operation2';
    }
}
