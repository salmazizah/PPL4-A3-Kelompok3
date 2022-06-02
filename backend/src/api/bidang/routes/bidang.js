"use strict";

/**
 * bidang router.
 */

const { createCoreRouter } = require("@strapi/strapi").factories;

module.exports = createCoreRouter("api::bidang.bidang");

// module.exports = {
//   routes: [
//     {
//       method: "GET",
//       path: "/hello",
//       handler: "bidang.index",
//     },
//     {
//       method: "GET",
//       path: "/bidangs",
//       handler: "bidang.find",
//     },
//   ],
// };
