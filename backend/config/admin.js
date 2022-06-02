module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'd1b2667c731a04df99d1a45aa9ce54c1'),
  },
});
