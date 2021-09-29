namespace AbstractFactory;

final class LinuxButton extends AbstractButton {
    final public function getClickAction(): string {
        return 'Linux button action';
    }
}
