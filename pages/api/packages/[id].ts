import { Package } from '../../../interfaces';

import { getPackages } from '../db';

export default (req: any, res: any) => {
  const { id } = req.query;

  const data: Package = getPackages().find((e) => e.name === id);

  res.statusCode = 200;
  res.json({ code: 0, data });
};
