# User Stories – Charity Donation Drive Organizer

## 1. Product Overview

**Project Name:** Charity Donation Drive Organizer

**Product Description:**

A web-based application that helps student clubs organize charity donation drives by managing needed items, collecting donation pledges, confirming received donations, and tracking progress toward donation targets.

The system focuses on item donations such as clothes, books, and food boxes. It does not support monetary donations.

## 2. User Roles

The system has three main user roles:

| User Role | Description |
|---|---|
| Donor | A person who wants to donate items to a charity drive. |
| Drive Organiser | A person responsible for creating and managing donation drives. |
| Collection-point Volunteer | A person responsible for receiving and confirming donated items. |

## 3. Product Backlog – User Stories

The following backlog contains 15 User Stories organized into the four required MVP Epics.

---

## Epic 1: Manage Donation Drives

### US-01: Create a Donation Drive

**User Story:**

As a drive organiser, I want to create a donation drive so that I can start organizing a charity campaign.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The organiser can enter the donation drive name.
- The organiser can provide a description of the drive.
- The organiser can set the start and end dates.
- The system validates all required fields.
- The system creates the drive successfully when valid information is provided.

### US-02: Add Needed Items

**User Story:**

As a drive organiser, I want to add needed items to a donation drive so that donors know what items they should contribute.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The organiser can add items such as clothes, books, and food boxes.
- Each item must have a name and description.
- The system allows the organiser to add multiple items.
- The system prevents adding an item without a name.

### US-03: Set Target Quantities

**User Story:**

As a drive organiser, I want to set target quantities for each needed item so that I can define the donation goals.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The organiser can enter a target quantity for each item.
- The target quantity must be greater than zero.
- The system saves the target quantity.
- The system displays the target quantity to donors.

### US-04: View Created Donation Drives

**User Story:**

As a drive organiser, I want to view my created donation drives so that I can monitor and manage my campaigns.

**Priority:** Medium

**Story Points:** 2

**Acceptance Criteria:**

- The organiser can view the donation drives they created.
- Each drive displays its name and basic information.
- The organiser can access the details of a selected drive.
- The system displays a clear message when no drives exist.

---

## Epic 2: Pledge Donations

### US-05: Browse Available Donation Drives

**User Story:**

As a donor, I want to browse available donation drives so that I can choose a charity campaign to support.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The donor can view available donation drives.
- Each drive displays its name and description.
- The donor can select a drive to view its details.
- The system displays a message when no drives are available.

### US-06: View Needed Items

**User Story:**

As a donor, I want to view the items needed in a donation drive so that I can choose the most useful items to donate.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The donor can view all items associated with a selected drive.
- Each item displays its target quantity.
- Each item displays its pledged quantity.
- Each item displays its received quantity.
- The donor can identify how many additional items are still needed.

### US-07: Select Items and Quantities

**User Story:**

As a donor, I want to select an item and specify its quantity so that I can pledge the items I intend to donate.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The donor can select an available item.
- The donor can enter the quantity they want to donate.
- The quantity must be greater than zero.
- The system checks the remaining target quantity.
- The system rejects a pledge that exceeds the remaining target quantity.

### US-08: Select a Collection Point

**User Story:**

As a donor, I want to select a collection point so that I know where to deliver my donated items.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The donor can view the available collection points.
- The donor can select one collection point.
- The selected collection point is associated with the pledge.
- The system requires a collection point before submitting the pledge.

### US-09: Submit a Donation Pledge

**User Story:**

As a donor, I want to submit my donation pledge so that the organiser knows what items I intend to donate.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The donor must select an item.
- The donor must specify a valid quantity.
- The donor must select a collection point.
- The system validates the pledge before submission.
- The system saves the pledge successfully.
- The system updates the pledged quantity.

### US-10: View Pledge Confirmation

**User Story:**

As a donor, I want to receive confirmation after submitting my pledge so that I know my donation commitment has been recorded.

**Priority:** Medium

**Story Points:** 2

**Acceptance Criteria:**

- The system displays a successful submission message.
- The confirmation displays the selected item.
- The confirmation displays the pledged quantity.
- The confirmation displays the selected collection point.
- The system does not confirm an invalid pledge.

---

## Epic 3: Confirm Received Donations

### US-11: View Pending Pledges

**User Story:**

As a collection-point volunteer, I want to view pending donation pledges so that I can identify the expected donations.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The volunteer can view pending pledges.
- Each pledge displays its item and pledged quantity.
- Each pledge displays its associated collection point.
- The volunteer can identify pledges that have not been fully received.

### US-12: Confirm Received Items

**User Story:**

As a collection-point volunteer, I want to confirm the items received so that the system records the actual donated quantities.

**Priority:** High

**Story Points:** 5

**Acceptance Criteria:**

- The volunteer can select a pending pledge.
- The volunteer can enter the quantity actually received.
- The received quantity must be greater than zero.
- The system saves the confirmed received quantity.
- The system updates the total received quantity for the item.
- Only confirmed received items count toward actual donation progress.

### US-13: Validate Received Quantities

**User Story:**

As a collection-point volunteer, I want the system to validate received quantities so that incorrect donation records are prevented.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The received quantity cannot exceed the outstanding pledged quantity.
- The system rejects zero or negative quantities.
- The system displays an error message for invalid quantities.
- The system does not update donation progress when confirmation fails.

---

## Epic 4: Track Donation Progress

### US-14: View Donation Quantities

**User Story:**

As a drive organiser, I want to view pledged and received quantities for each item so that I can monitor the actual donation situation.

**Priority:** High

**Story Points:** 2

**Acceptance Criteria:**

- The organiser can view the target quantity for each item.
- The organiser can view the total pledged quantity.
- The organiser can view the total received quantity.
- The system displays updated quantities after successful pledge and confirmation operations.

### US-15: View Donation Progress Bars

**User Story:**

As a donor, I want to view a progress bar for each item so that I can understand how close the donation drive is to its target.

**Priority:** High

**Story Points:** 3

**Acceptance Criteria:**

- The system displays a progress bar for each item.
- The progress bar shows the received quantity compared with the target quantity.
- The system displays the pledged quantity separately from the received quantity.
- The progress bar updates after received donations are confirmed.
- Unconfirmed pledges do not increase the actual received progress.

---

## 4. Business Rules

The following business rules must be enforced by the system:

1. Donors cannot pledge quantities greater than the remaining target quantity.
2. Only confirmed received items count toward actual donation progress.
3. Received quantities cannot exceed outstanding pledged quantities.
4. Donation quantities must always be greater than zero.
5. The system supports item donations only; monetary donations are not accepted.
6. Each donation pledge must be associated with a collection point.
7. The received quantity and pledged quantity must be tracked separately.

## 5. Story Points Summary

The team uses Story Points to estimate the relative complexity and effort required to complete each User Story.

| User Story | Priority | Story Points |
|---|---|---:|
| US-01: Create a Donation Drive | High | 3 |
| US-02: Add Needed Items | High | 2 |
| US-03: Set Target Quantities | High | 2 |
| US-04: View Created Donation Drives | Medium | 2 |
| US-05: Browse Available Donation Drives | High | 3 |
| US-06: View Needed Items | High | 2 |
| US-07: Select Items and Quantities | High | 3 |
| US-08: Select a Collection Point | High | 2 |
| US-09: Submit a Donation Pledge | High | 3 |
| US-10: View Pledge Confirmation | Medium | 2 |
| US-11: View Pending Pledges | High | 3 |
| US-12: Confirm Received Items | High | 5 |
| US-13: Validate Received Quantities | High | 2 |
| US-14: View Donation Quantities | High | 2 |
| US-15: View Donation Progress Bars | High | 3 |
| **Total** | | **39** |

## 6. MVP Scope

The MVP includes all four required Epics:

1. Manage Donation Drives.
2. Pledge Donations.
3. Confirm Received Donations.
4. Track Donation Progress.

All 15 User Stories in this backlog support the core functionality of the Charity Donation Drive Organizer.

The team will prioritize these stories based on business value, dependencies, and implementation complexity.

---

**Document:** stories.md

**Project:** Charity Donation Drive Organizer

**Course:** Agile Software Engineering
