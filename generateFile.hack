
<<__EntryPoint>>
function generateFile(): void {

    $result = shell_exec(
        "find . -type f -path '*.hack' ! -name 'main.hack' ! -name 'generateFile.hack' -exec cat {} + | sed 's/<<__EntryPoint>>//g'",
    );

    if ($result) {
        $fileContent =
            \str_replace('\\FactoryMethod', '\\Main\\FactoryMethod', $result);

        $fileContent = "
namespace Main {
    <<__EntryPoint>>
    function main(): void {
        // FactoryMethod\\factoryMethod();
        // Adapter\\adapter();
        // Proxy\\proxy();
        // Decorator\\decorator();
        // Observer\\observer();

        // AbstractFactory\\abstractFactory();
        // Bridge\\bridge();
        // Composite\\composite();
        // Facade\\facade();

        // Visitor\\visitor();
        ".
            \preg_replace('/(namespace .*);/', '} '."\n".'$1 {', $fileContent).
            "}}\n";

        file_put_contents('tmp.hack', $fileContent);

        echo "done\n";
    } else {
        echo "FAILED TO GENERATE A FILE";
    }
}
