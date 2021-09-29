namespace AbstractFactory;

final class WindowsWindow extends AbstractWindow {
    final public function getCaption(): string {
        return 'Windows window caption';
    }
}
