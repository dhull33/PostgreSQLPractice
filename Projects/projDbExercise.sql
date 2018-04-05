--What are all projects that use JavaScript?
SELECT * FROM project_uses_tech
JOIN tech
  ON project_uses_tech.tech_id = tech.id;

--What are all technologies used by the Personal Website?
SELECT * FROM project_uses_tech
JOIN tech
  ON project_uses_tech.tech_id = tech.id
  WHERE project_id=4;

--get the count of the number of techs used by each project
SELECT tech.id, tech.name, COUNT(tech.name) FROM tech
LEFT JOIN project_uses_tech
   ON project_uses_tech.tech_id = tech.id
GROUP BY tech.id;

--List all projects with along with each technology used by it
SELECT * FROM project
JOIN project_uses_tech
    ON project_uses_tech.project_id = project."id"
JOIN tech
    ON project_uses_tech.tech_id=tech."id";

--List all the distinct techs that are used by at least one project.
SELECT DISTINCT project_uses_tech.tech_id, tech.name
FROM project_uses_tech
LEFT JOIN tech
    ON tech.id = project_uses_tech.tech_id
WHERE project_uses_tech.project_id != 0;


--List all the distinct techs that are not used by any projects.
SELECT * FROM tech
LEFT JOIN project_uses_tech
    ON project_uses_tech.project_id=tech."id"
    WHERE project_uses_tech.project_id IS NULL;




--List all the distinct projects that use no tech.
SELECT * FROM project_uses_tech
LEFT JOIN tech
    ON tech.id = project_uses_tech.tech_id
RIGHT JOIN project
    ON project_uses_tech.project_id = project.id
    WHERE tech.id IS NULL;
