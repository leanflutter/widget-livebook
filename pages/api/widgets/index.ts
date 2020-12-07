import { PagedList, Snippet } from '../../../interfaces';

import { paginate, getSnippets } from '../db';

export default (req: any, res: any) => {
  const { page = 1, perPage = 10 } = req.query;

  const pagedList: PagedList<Snippet> = paginate(getSnippets(), page, perPage);

  res.statusCode = 200;
  res.json({ code: 0, data: pagedList });
};
