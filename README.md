# Referenced Foreign Keys
Foreign keys added on references for a create_table migration.
It uses foreigner to create the foreign_key

Example:
```ruby
  create_table :user do |t|
    t.references :role, fk: true
  end
```

Todo:

* validate change_table
* validate add_reference
* add option for defining name of the table (instead of true)
* add specs
* validate db chosen (if not already made by foreigner)