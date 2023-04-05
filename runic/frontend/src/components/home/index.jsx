import * as React from 'react'
import { Box, Stack } from '@chakra-ui/react'

import List from '../list'
import CreateForm from '../form/create'

const Home = () => {
  return (
    <Box>
      <CreateForm />
      <List />
      <Stack direction="row">
      </Stack>
    </Box>
  )
}

export default Home
