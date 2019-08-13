import { useEffect } from 'react';
import { navigate } from 'gatsby';

export default () => {
  useEffect(() => {
    navigate('/basics/introduction/');
  }, []);
  return null;
};
