import Cors from 'cors';
import { Package } from '../../../interfaces';
import initMiddleware from '../../../lib/init-middleware';

import { getPackages } from '../db';

// Initialize the cors middleware
const cors = initMiddleware(
  // You can read more about the available options here: https://github.com/expressjs/cors#configuration-options
  Cors({
    // Only allow requests with GET, POST and OPTIONS
    methods: ['GET', 'POST', 'OPTIONS'],
  })
);

export default async (req: any, res: any) => {
  // Run cors
  await cors(req, res);

  const { id } = req.query;

  let data: Package = getPackages().find((e) => e.name === id);

  if (!data) {
    res.statusCode = 404;
    res.json({ code: 404 });
    return;
  }

  res.statusCode = 200;
  res.json({ code: 0, data });
};
