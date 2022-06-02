"use strict";

/**
 *  bidang controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::bidang.bidang");

// module.exports = createCoreController("api::bidang.bidang", ({ strapi }) => ({
//   // Method 1: Creating an entirely custom action
//   async index(ctx) {
//     ctx.body = "hello";
//   },

//   async find(ctx) {
//     // Calling the default core action
//     const { data, meta } = await super.find(ctx);

//     return { data, meta };
//   },
// }));
