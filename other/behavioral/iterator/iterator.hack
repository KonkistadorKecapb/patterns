namespace Iterator;

<<__EntryPoint>>
function iterator(): void {

    echo "---=== 1) iterator ===---\n";
    $iterableCollection = getIterableCollection();

    $regularIterator = $iterableCollection->createIterator();
    $oddIterator = $iterableCollection->createOddIterator();

    echo "\n- Regular iterator:\n";
    printValue('current', $regularIterator->current());
    printValue('next', $regularIterator->next());
    printValue('next', $regularIterator->next());
    printValue('previous', $regularIterator->previous());
    printValue('next', $regularIterator->next());
    printValue('next', $regularIterator->next());
    printValue('next', $regularIterator->next());
    printValue('next', $regularIterator->next());
    printValue('previous', $regularIterator->previous());
    printValue('previous', $regularIterator->previous());
    printValue('first', $regularIterator->first());
    printValue('previous', $regularIterator->previous());
    printValue('previous', $regularIterator->previous());

    echo "\n- Odd iterator:\n";
    printValue('current', $oddIterator->current());
    printValue('next', $oddIterator->next());
    printValue('next', $oddIterator->next());
    printValue('next', $oddIterator->next());
    printValue('previous', $oddIterator->previous());
    printValue('previous', $oddIterator->previous());
    printValue('previous', $oddIterator->previous());
    printValue('previous', $oddIterator->previous());
    printValue('first', $oddIterator->first());
}

function getIterableCollection(): IterableCollection {
    // new Tree();

    echo "list: [1, 2, 3, 4]\n";
    return new ItemList(vec[
        new ListItem('1'),
        new ListItem('2'),
        new ListItem('3'),
        new ListItem('4'),
    ]);
}

function printValue(string $name, ?IItem $item): void {
    echo $name.': ';

    if ($item === null) {
        echo "null\n";
    } else {
        echo $item->getValue()."\n";
    }
}
