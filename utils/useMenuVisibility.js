import React from 'react';

export const MenuContext = React.createContext();
export const useMenuVisibility = () => {
  const [value, setValue] = React.useState(false);

  const handleOpen = () => {
    setValue(true);
  };

  const handleClose = () => {
    setValue(false);
  };

  const handleToggle = () => {
    setValue(!value);
  };

  return {
    isVisible: value,
    handleOpen,
    handleClose,
    handleToggle
  };
};
