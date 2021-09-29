namespace Observer;

<<__EntryPoint>>
function observer(): void {
    echo "---=== Observer ===---\n";

    $subject = new ConcreteSubject();

    $observer1 = new ConcreteObserver1();
    $observer2 = new ConcreteObserver2();

    $subject->notify();

    $subject->attach($observer1);

    $subject->notify();

    $subject->attach($observer2);

    $subject->notify();

    $subject->detach($observer2);

    $subject->notify();

    $subject->detach($observer1);

    $subject->notify();
}
