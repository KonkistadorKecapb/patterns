namespace Composite;

final class Node extends TreeItem {

    final public function __construct(private vec<TreeItem> $children) {

    }

    final public function execute(): void {
        foreach ($this->children as $child) {
            $child->execute();
        }
    }
}
