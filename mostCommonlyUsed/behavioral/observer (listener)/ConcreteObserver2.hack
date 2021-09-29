namespace Observer;

final class ConcreteObserver2 implements IObserver {

    final public function __construct() {

    }

    final public function update(): void {
        echo "observer 2 updated\n";
    }
}
