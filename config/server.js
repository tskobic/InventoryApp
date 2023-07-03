module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', ''),
    },
    watchIgnoreFiles: [
      '**/invApp-strapi/qr.svg**',
      '**/AIR2108/qr.svg**',
    ]
  },
});
