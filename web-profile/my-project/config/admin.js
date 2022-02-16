module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '15d701825b7e1a603bcfc7661a7f8ae5'),
  },
});
