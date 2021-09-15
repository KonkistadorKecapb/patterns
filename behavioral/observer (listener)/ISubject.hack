namespace Observer;

interface ISubject {
    public function attach(IObserver $observer): void;
    public function detach(IObserver $observer): void;
    public function notify(): void;
}
