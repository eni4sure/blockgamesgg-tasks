require("dotenv").config();
require("@nomiclabs/hardhat-ethers");

const { API_URL, PRIVATE_KEY } = process.env;

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
	solidity: "0.8.4",
	defaultNetwork: "rinkeby",
	networks: {
		hardhat: {},
		rinkeby: {
			url: API_URL,
			accounts: [`0x${PRIVATE_KEY}`],
		},
	},
};
