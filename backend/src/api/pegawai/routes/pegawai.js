"use strict";

/**
 * pegawai router.
 */

const { createCoreRouter } = require("@strapi/strapi").factories;

module.exports = createCoreRouter("api::pegawai.pegawai");

// module.exports = {
//   routes: [
//     {
//       method: "GET",
//       path: "/pegawais",
//       handler: "pegawai.find",
//     },
//     {
//       method: "GET",
//       path: "/pegawai/:NIP",
//       handler: "pegawai.findOne",
//     },

//     {
//       method: "GET",
//       path: "/role/:role",
//       handler: "pegawai.getRole",
//     },
//     {
//       method: "PUT",
//       path: "/update-role/:id",
//       handler: "pegawai.updateRole",
//     },
//   ],
// };
