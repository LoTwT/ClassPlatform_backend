const path = require("path")
const WebpackNodeExternals = require("webpack-node-externals")

module.exports = {
    entry: "./src/server.ts",
    output: {
        path: path.resolve(__dirname, "build"),
        filename: "server.js",
    },
    externals: [
        WebpackNodeExternals(),
    ],
    target: "node",
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                use: ["ts-loader"],
            },
            {
                test: /\.(jpg|png|svg|gif)$/,
                use: "file-loader",
            },
            {
                test: /\.css$/,
                use: ["css-loader"]
            },
        ]
    },
    resolve: {
        extensions: [".ts", ".tsx", ".js", "jsx"],
        alias: {
            "@": path.resolve(__dirname, "../web/src"),
            "~": path.resolve(__dirname, "src/"),
        }
    }
}