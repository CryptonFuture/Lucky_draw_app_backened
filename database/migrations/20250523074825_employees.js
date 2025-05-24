/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
    return knex.schema.createTable("employees", (table) => {
    table.increments('id')
      .primary()
      .defaultTo(knex.raw("NEWID()"));
    table.string('EmployeesName')
    table.string('Division')
    table.string('Module')
    table.boolean('is_lucky_draw').defaultTo(false)
    table.timestamp("created_at").defaultTo(knex.fn.now());
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
   return knex.schema.dropTable('employees')
};
