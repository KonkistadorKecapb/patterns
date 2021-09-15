namespace Observer;

final class ConcreteObserver1 implements IObserver {

    final public function __construct() {

    }

    final public function update(): void {
        echo "observer 1 updated\n";
    }
}
