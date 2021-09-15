namespace FactoryMethod;

<<__EntryPoint>>
function factoryMethod(): void {
    echo "---=== Factory method (v1) ===---\n";

    $server1 = \FactoryMethod\v1\Factory::getServer(1);
    $server2 = \FactoryMethod\v1\Factory::getServer(2);

    echo $server1->getData()."\n";
    echo $server2->getData()."\n";


    echo "---=== Factory method (v2) ===---\n";

    $server1 = \FactoryMethod\v2\Server::getServer(1);
    $server2 = \FactoryMethod\v2\Server::getServer(2);

    echo $server1->getData()."\n";
    echo $server2->getData()."\n";
}
