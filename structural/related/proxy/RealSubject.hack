namespace Proxy;

final class RealSubject implements ISubject {

    final public function __construct() {

    }

    final public function operation1(): int {
        return (int)(2 ** 10);
    }

    final public function operation2(): string {
        return 'Some data from external service';
    }
}
