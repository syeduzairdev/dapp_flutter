const Migration = artifacts.require("Migration");

module.exports = function (deployer) {
  deployer.deploy(Migration);
};
