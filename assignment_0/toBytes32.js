const fs = require("fs")
const { ethers } = require("ethers")
let candidates = require("./candidates.json")

candidates = candidates.map(name => {
    name = ethers.utils.formatBytes32String(name)
    return name
})
fs.writeFileSync("./candidates32bytes.json", JSON.stringify(candidates))
