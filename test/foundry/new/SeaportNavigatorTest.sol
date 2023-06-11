// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    SeaportNavigator
} from "../../../contracts/helpers/navigator/SeaportNavigator.sol";
import {
    HelperInterface
} from "../../../contracts/helpers/navigator/lib/HelperInterface.sol";
import {
    RequestValidator
} from "../../../contracts/helpers/navigator/lib/RequestValidator.sol";
import {
    CriteriaHelper
} from "../../../contracts/helpers/navigator/lib/CriteriaHelper.sol";
import {
    ValidatorHelper
} from "../../../contracts/helpers/navigator/lib/ValidatorHelper.sol";
import {
    OrderDetailsHelper
} from "../../../contracts/helpers/navigator/lib/OrderDetailsHelper.sol";
import {
    FulfillmentsHelper
} from "../../../contracts/helpers/navigator/lib/FulfillmentsHelper.sol";
import {
    ExecutionsHelper
} from "../../../contracts/helpers/navigator/lib/ExecutionsHelper.sol";

contract SeaportNavigatorTest {
    HelperInterface internal requestValidator = new RequestValidator();
    HelperInterface internal criteriaHelper = new CriteriaHelper();
    HelperInterface internal validatorHelper = new ValidatorHelper();
    HelperInterface internal orderDetailsHelper = new OrderDetailsHelper();
    HelperInterface internal fulfillmentsHelper = new FulfillmentsHelper();
    HelperInterface internal executionsHelper = new ExecutionsHelper();

    SeaportNavigator internal navigator =
        new SeaportNavigator(
            address(requestValidator),
            address(criteriaHelper),
            address(validatorHelper),
            address(orderDetailsHelper),
            address(fulfillmentsHelper),
            address(executionsHelper)
        );
}
