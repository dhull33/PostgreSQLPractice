SELECT * FROM project_uses_tech
JOIN tech
  ON project_uses_tech.tech_id = tech.id;

SELECT * FROM project_uses_tech
JOIN tech
  ON project_uses_tech.tech_id = tech.id
  WHERE project_id=4;


SELECT * FROM tech
LEFT JOIN project_uses_tech
    ON project_uses_tech.tech_id = tech.id;

SELECT