namespace AbstractFactory;

<<__EntryPoint>>
function abstractFactory(): void {

    echo "---=== 1) abstract factory ===---\n";

    $operatingSystemList = getAbstractFactoryOperatingSystemList();

    foreach ($operatingSystemList as $operatingSystem) {
        echo "Processing next OS...\n";

        $window = $operatingSystem->createWindow();
        echo "\tWindow caption: [{$window->getCaption()}]\n";

        $button = $operatingSystem->createButton();
        echo "\tButton action name: [{$button->getClickAction()}]\n";
    }
}

function getAbstractFactoryOperatingSystemList(): vec<AbstractOperatingSystem> {
    return vec[
        new Windows(),
        new Linux(),
        new Mac(),
    ];
}
