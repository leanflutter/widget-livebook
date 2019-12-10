import React from 'react';
import classNames from 'classnames';
import Burger from '@animated-burgers/burger-squeeze';

import './nav-burger.module.scss';

export const NavBurger = props => {
  const { className, ...rest } = props;
  return (
    <Burger
      className={classNames('navigation-burger', className)}
      {...rest}
    />
  );
};
