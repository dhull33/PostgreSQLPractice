SELECT * FROM project_uses_tech
JOIN tech
  ON project_uses_tech.tech_id = tech.id;