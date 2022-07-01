INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_mcdonalds', 'mcdonalds', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_mcdonalds', 'mcdonalds', 1),
  ('society_mcdonalds_fridge', 'mcdonalds (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_mcdonalds', 'mcdonalds', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('mcdonalds', 'Mcdonalds')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('mcdonalds', 0, 'recruit', 'Νέος', 300, '{}', '{}'),
  ('mcdonalds', 1, 'employer', 'Ντελιβεράς', 300, '{}', '{}'),
  ('mcdonalds', 2, 'viceboss', 'Ταμίο', 500, '{}', '{}'),
  ('mcdonalds', 3, 'boss', 'Υπέφθηνος', 600, '{}', '{}')
;

 INSERT INTO `items` (`name`, `label`, `limit`) VALUES
  ('ilikaburger', 'Υλικά Burger', 10),
  ('cheeseburger', 'Μπιφτέι με τυρί', 5),
  ('burger', 'Burger', 5),
  ('burgerall', 'Burger Από Όλα', 5)
;
