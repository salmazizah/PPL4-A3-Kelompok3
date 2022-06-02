"use strict";

/**
 *  pegawai controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::pegawai.pegawai");

// module.exports = createCoreController("api::pegawai.pegawai", ({ strapi }) => ({
//   // Method 1: Creating an entirely custom action
//   async index(ctx) {
//     ctx.body = "hello";
//   },

//   async find(ctx) {
//     // Calling the default core action
//     const { data, meta } = await super.find(ctx);

//     return { data, meta };
//   },

//   async findOne(ctx, populate) {
//     const { NIP } = ctx.params;

//     const entity = await strapi.db.query("api::pegawai.pegawai").findOne({
//       where: { NIP },
//       populate: true,
//       // populate: ["jabatan"], -> fetch one of relation
//     });

//     return entity;
//   },

//   async getRole(ctx) {
//     const { role } = ctx.params;

//     const entity = await strapi.db.query("api::pegawai.pegawai").findMany({
//       where: { role },
//       populate: true,
//     });

//     return entity;
//   },

//   async updateRole(ctx) {
//     const { id } = ctx.params;
//     const { role } = ctx.request.body.data;

//     const entry = await strapi.db.query("api::pegawai.pegawai").update({
//       where: { id },
//       data: {
//         role: role,
//       },
//     });

//     return entry;
//   },
// }));
