import { Snippet } from '../../../interfaces';

import { getSnippets } from '../db';

export default (req: any, res: any) => {
  const { id } = req.query;

  const data: Snippet = getSnippets().find((e) => e.name === id);

  if (!data) {
    res.statusCode = 404;
    res.json({ code: 404 });
    return;
  }

  res.statusCode = 200;
  res.json({ code: 0, data });
};
