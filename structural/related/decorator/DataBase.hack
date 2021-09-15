namespace Decorator;

final class DataBase implements IComponent {

    final public function __construct() {

    }

    final public function operation1(): int {
        return 10;
    }

    final public function operation2(): string {
        return 'Operation 2: concrete component';
    }
}
