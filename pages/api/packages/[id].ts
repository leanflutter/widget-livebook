import { Package } from '../../../interfaces';

import { getPackages } from '../db';

export default async (req: any, res: any) => {
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
