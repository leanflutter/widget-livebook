import { PagedList, Package } from '../../../interfaces';

import { paginate, getPackages } from '../db';

export default (req: any, res: any) => {
  const { page = 1, perPage = 10 } = req.query;

  const pagedList: PagedList<Package> = paginate(getPackages(), page, perPage);

  res.statusCode = 200;
  res.json({ code: 0, data: pagedList });
};
