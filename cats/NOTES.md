Start with app that has built out CRUD functionality for one model
Briefly review the new form and ask questions about the flow
Add validations to the model to prevent bad data from being submitted
Refactor the controller actions to use these validations
Display errors in views
If time, add an error class with styling

Create nested form all ways
Use reject_if in model to prevent blank fields from s submitting
Use include_blank for collection_select (or prompt: true)
Use accepts_nested_attributes_for and create custom _attributes= method to prevent duplicate records
Use hidden field to associate a model
Use collection select (maybe start with select, maybe refactor to dataset) to show existing associated data
Use fields_for in form and _attributes in strong params
Use _ids: [] in strong params