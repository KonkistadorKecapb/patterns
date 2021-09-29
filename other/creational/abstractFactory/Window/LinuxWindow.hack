namespace AbstractFactory;

final class LinuxWindow extends AbstractWindow {
    final public function getCaption(): string {
        return 'Linux window caption';
    }
}
