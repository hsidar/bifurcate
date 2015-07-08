Bifurcate is a Ruby on Rails app used to divide the bills evenly between two people.



###Component

- Import a CSV file and add it to the database.

- Tag untagged list items

- Display items by tag

- Display items by date range

- Calculate what is owed by whom.

###Features

- Fancy Analytics

- Multiple user accounts

###Design Aesthetics

- Lime green and white primary colors

- cartoony avatars on front page

- animated graphs

###User Flow

Main page
- Shows avatars, money owed below.
- Navigation
- View data detail
- Link to account management analytics page.

Add CSV
- redirects to show untagged page
- Imports CSV
- AJAX popup for this.

Show untagged
- Shows all entries without a tag
- Link to add new tag.

Data detail
- Shows each item
- Drop down to select sort criteria (by tag, by date)
- Edit button per entry.

Edit page
- Edit name and tag.
