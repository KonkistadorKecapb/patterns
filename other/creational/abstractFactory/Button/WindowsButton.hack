namespace AbstractFactory;

final class WindowsButton extends AbstractButton {
    final public function getClickAction(): string {
        return 'Windows button action';
    }
}
