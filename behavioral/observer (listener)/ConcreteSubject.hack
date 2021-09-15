namespace Observer;

final class ConcreteSubject implements ISubject {

    private vec<IObserver> $listenerList = vec<IObserver>[];

    final public function __construct() {

    }

    final public function attach(IObserver $observer): void {
        $this->listenerList[] = $observer;

        echo 'attached. listener count: '.
            \HH\Lib\C\count($this->listenerList).
            "\n";
    }

    final public function detach(IObserver $observer): void {
        $this->listenerList = \HH\Lib\Vec\filter(
            $this->listenerList,
            $listener ==> $listener !== $observer,
        );

        echo 'detached. listener count: '.
            \HH\Lib\C\count($this->listenerList).
            "\n";
    }

    final public function notify(): void {
        echo "notify\n";

        \HH\Lib\Vec\map($this->listenerList, $listener ==> $listener->update());
    }
}
