/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
    return knex.schema.createTable("uploaded_files ", (table) => {
        table.increments('id')
            .primary()
            .defaultTo(knex.raw("NEWID()"));
        table.string('file_name').unique().notNullable()
        table.timestamp("uploaded_at ").defaultTo(knex.fn.now());
    })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
    return knex.schema.dropTable('uploaded_files ')
};
