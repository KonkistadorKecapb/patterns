namespace Composite;

<<__EntryPoint>>
function composite(): void {

    echo "---=== 1) composite ===---\n";
    getComposite()->execute();
}

function getComposite(): TreeItem {
    return new Node(vec[
        new Node(vec[
            new Leaf('Node 1.1: Leaf 1 on layer 3'),
            new Leaf('Node 1.1: Leaf 2 on layer 3'),
            new Leaf('Node 1.1: Leaf 3 on layer 3'),
            new Leaf('Node 1.1: Leaf 4 on layer 3'),
        ]),
        new Node(vec[
            new Node(vec[
                new Leaf('Node 1.2.1: Leaf 1 on layer 4'),
            ]),
        ]),
        new Node(vec[

        ]),
    ]);
}
