/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable("sales_for_comments", (table) => {
    table.increments('id')
      .primary()
      .defaultTo(knex.raw("NEWID()"));
    table.string('Transactionid')
    table.string('Comments')
    table.string('Store')
    table.string('POS')
    table.string('Date')
    table.date('ActualDate')
    table.date('BusinessDate')
    table.float('Total')
    table.boolean('is_lucky_draw').defaultTo(false)
    table.timestamp("created_at").defaultTo(knex.fn.now());
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable('sales_for_comments')
};
