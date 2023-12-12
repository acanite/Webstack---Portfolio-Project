https://github.com/acanite/Webstack---Portfolio-Project/blob/master/src/new-frontend/README.md#react--typescript--vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md uses https://babeljs.io/ for Fast Refresh
https://github.com/vitejs/vite-plugin-react-swc uses https://swc.rs/ for Fast Refresh

https://github.com/acanite/Webstack---Portfolio-Project/blob/master/src/new-frontend/README.md#expanding-the-eslint-configuration

If you are developing a production application, we recommend updating the configuration to enable type aware lint rules:

Configure the top-level parserOptions property like this:

export default {
  // other rules...
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
    project: ['./tsconfig.json', './tsconfig.node.json'],
    tsconfigRootDir: __dirname,
  },
}

Replace plugin:@typescript-eslint/recommended to plugin:@typescript-eslint/recommended-type-checked or plugin:@typescript-eslint/strict-type-checked
Optionally add plugin:@typescript-eslint/stylistic-type-checked
Install https://github.com/jsx-eslint/eslint-plugin-react and add plugin:react/recommended & plugin:react/jsx-runtime to the extends list
