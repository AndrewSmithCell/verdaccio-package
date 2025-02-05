rm package.json
rm package-lock.json
# cp -f ../package-jsons/package.json package.json
# cp -f ../package-jsons/package-lock.json package-lock.json
NPM_CONFIG_REGISTRY=http://localhost:4873 npm install create-refine-app @refinedev/ably @refinedev/airtable @refinedev/antd @refinedev/appwrite @refinedev/chakra-ui @refinedev/cli @refinedev/codemod @refinedev/core @refinedev/graphql @refinedev/hasura @refinedev/inferencer @refinedev/kbar @refinedev/mantine @refinedev/medusa @refinedev/mui @refinedev/nestjs-query @refinedev/nestjsx-crud @refinedev/nextjs-router @refinedev/react-hook-form @refinedev/react-router-v6 @refinedev/react-router @refinedev/react-table @refinedev/remix-router react-admin mui-treasury mui-file-input notistack @mui/material-nextjs @emotion/cache --force
