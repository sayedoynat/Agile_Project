Feature: Select Items and Quantities

  Scenario: Successfully select an item within the remaining target
    Given a donation drive has an item "Clothes"
    And the target quantity is 10
    And the pledged quantity is 6
    When the donor selects "Clothes" with quantity 3
    Then the item selection should be accepted

  Scenario: Reject a quantity exceeding the remaining target
    Given a donation drive has an item "Books"
    And the target quantity is 10
    And the pledged quantity is 6
    When the donor selects "Books" with quantity 5
    Then the item selection should be rejected
    And the system should display an error message


  Scenario: Reject a zero donation quantity
    Given a donation drive has an item "Food Boxes"
    When the donor selects "Food Boxes" with quantity 0
    Then the item selection should be rejected
    And the system should display an error message


