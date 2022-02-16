module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '40e3d220bb03eb5abe85e5266d6912da'),
  },
});
