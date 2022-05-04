// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number {
    string name = "Moises Castillo";

    function getNumber() private returns (int256 number) {
        number = 1948;
    }

    function changeNumber() public returns (int256 number) {
        number = getNumber() * -1;
    }

    //payable: La usamos cuando necesitamos dentro de una función enviar ether alguna dirección de la blockchain
    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }

    // view : La usamos para definir que una función no va modificar las variables de estado, sino que sólo las puede leer.
    function getName() public view returns (string memory) {
        return name;
    }

    // pure: Se usa para definir que una función no lee ni modifica ninguna de las variables de estado y además no usa ninguna variable global
    function sum(int256 a, int256 b) public pure returns (int256 result) {
        result = a + b;
    }
}
