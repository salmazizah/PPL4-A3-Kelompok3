module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'e23a4ece79599f19696023167ec6573e'),
  },
});
