module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '5bb7f512b473bd9670e54ec26f658607'),
  },
});
