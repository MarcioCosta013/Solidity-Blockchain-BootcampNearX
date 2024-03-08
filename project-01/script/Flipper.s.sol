    // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.13;

    import {Script, console2} from "forge-std/Script.sol";
    import {Flipper} from "../src/Flipper.sol";

    contract FlipperScript is Script {
        Flipper flipper;

        function setUp() public {}

        function run() public {
            vm.startBroadcast(0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d);

            //deploy do contrato
            flipper = new Flipper();
            console2.log("ADDRESS", address(flipper));

            //chamar o contrato (getValue)
            console2.log(flipper.getValue());

            //chamar o contrato (flip)
            flipper.flip();

            //chamar o contrato (getValue)
            console2.log(flipper.getValue());

            vm.stopBroadcast();
        }
    }
